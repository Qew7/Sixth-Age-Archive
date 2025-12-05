# frozen_string_literal: true

module TooltipHelper
  # Генерирует тултип для специального правила
  def rule_tooltip(rule_name, display_text = nil, &block)
    description = SpecialRule.description_for(rule_name)

    if description.present?
      content = render_tooltip_content(
        title: rule_name,
        body: description
      )

      content_tag :span,
        class: "rule-link cursor-help border-b border-dotted border-amber-600/50 hover:border-amber-400 hover:text-amber-300 transition-colors",
        data: {
          controller: "tooltip",
          tooltip_content_value: content,
          tooltip_position_value: "top",
          action: "mouseenter->tooltip#show mouseleave->tooltip#hide"
        } do
        block_given? ? yield : (display_text || rule_name)
      end
    else
      block_given? ? yield : (display_text || rule_name)
    end
  end

  # Генерирует тултип для юнита
  def unit_tooltip(unit, display_name: nil, &block)
    content = render_unit_tooltip(unit)

    content_tag :span,
      class: "unit-link cursor-help border-b border-dotted border-amber-600/50 hover:border-amber-400 hover:text-amber-300 transition-colors",
      data: {
        controller: "tooltip",
        tooltip_content_value: content,
        tooltip_position_value: "bottom",
        action: "mouseenter->tooltip#show mouseleave->tooltip#hide"
      } do
      block_given? ? yield : (display_name || unit.name)
    end
  end

  # Парсит special_rules строку и оборачивает известные правила в тултипы
  def parse_special_rules(rules_string)
    return "".html_safe if rules_string.blank?

    # Кэшируем правила из базы
    @cached_rules ||= SpecialRule.pluck(:name, :description).to_h

    # Разбиваем на части и обрабатываем каждую
    parts = []
    remaining = rules_string.dup

    # Получаем все правила, сортируем по длине (сначала длинные)
    sorted_rules = @cached_rules.keys.sort_by { |r| -r.length }

    # Маркер для уже обработанных частей
    processed_ranges = []

    sorted_rules.each do |rule_name|
      pattern = /\b(#{Regexp.escape(rule_name)})\b/i

      # Находим все вхождения
      rules_string.scan(pattern) do
        match = Regexp.last_match
        start_pos = match.begin(0)
        end_pos = match.end(0)

        # Проверяем что эта позиция ещё не обработана
        next if processed_ranges.any? { |r| r.cover?(start_pos) || r.cover?(end_pos - 1) }

        processed_ranges << (start_pos...end_pos)
      end
    end

    # Сортируем диапазоны по позиции
    processed_ranges.sort_by!(&:begin)

    # Собираем результат
    result = []
    last_pos = 0

    processed_ranges.each do |range|
      # Добавляем текст до этого диапазона
      if range.begin > last_pos
        result << ERB::Util.html_escape(rules_string[last_pos...range.begin])
      end

      # Добавляем тултип
      matched_text = rules_string[range]
      rule_name = sorted_rules.find { |r| matched_text.downcase == r.downcase }

      if rule_name && @cached_rules[rule_name]
        result << build_tooltip_span(matched_text, rule_name, @cached_rules[rule_name])
      else
        result << ERB::Util.html_escape(matched_text)
      end

      last_pos = range.end
    end

    # Добавляем остаток
    if last_pos < rules_string.length
      result << ERB::Util.html_escape(rules_string[last_pos..])
    end

    result.join.html_safe
  end

  private

  def build_tooltip_span(display_text, rule_name, description)
    tooltip_content = render_tooltip_content(title: rule_name, body: description)
    # Экранируем для HTML атрибута
    escaped_content = ERB::Util.html_escape(tooltip_content)

    %(<span class="rule-link cursor-help border-b border-dotted border-amber-600/50 hover:border-amber-400 hover:text-amber-300 transition-colors" data-controller="tooltip" data-tooltip-content-value="#{escaped_content}" data-tooltip-position-value="top" data-action="mouseenter->tooltip#show mouseleave->tooltip#hide">#{ERB::Util.html_escape(display_text)}</span>)
  end

  def render_tooltip_content(title:, body:)
    %(<div class="tooltip-title">#{ERB::Util.html_escape(title)}</div><div class="tooltip-body">#{ERB::Util.html_escape(body)}</div>)
  end

  def render_unit_tooltip(unit)
    stats_html = render_stats_row(unit)

    parts = []
    parts << %(<div class="tooltip-unit">)
    parts << %(<div class="tooltip-title">#{ERB::Util.html_escape(unit.name)}</div>)
    parts << %(<div class="tooltip-stats">#{stats_html}</div>)
    parts << unit_size_html(unit)
    parts << base_size_html(unit)
    parts << special_rules_html(unit)
    parts << %(<div class="tooltip-points">#{unit.base_cost} #{I18n.t('units.points')}</div>)
    parts << %(</div>)

    parts.join
  end

  def render_stats_row(unit)
    return "" unless unit.stats.present?

    stats = %w[M WS BS S T W I A Ld].map do |stat|
      value = unit.stats[stat] || "-"
      %(<span class="stat"><span class="stat-name">#{stat}</span><span class="stat-value">#{value}</span></span>)
    end.join

    %(<div class="stats-row">#{stats}</div>)
  end

  def unit_size_html(unit)
    return "" unless unit.min_size && unit.max_size

    size_text = if unit.min_size == unit.max_size
      "#{unit.min_size} #{I18n.t('units.model', count: unit.min_size)}"
    else
      "#{unit.min_size}-#{unit.max_size} #{I18n.t('units.models')}"
    end

    cost_text = unit.cost_per_model.to_i > 0 ? " (+#{unit.cost_per_model} #{I18n.t('units.pts_per_model')})" : ""

    %(<div class="tooltip-size">#{ERB::Util.html_escape(size_text)}#{ERB::Util.html_escape(cost_text)}</div>)
  end

  def base_size_html(unit)
    return "" unless unit.base_size.present?
    %(<div class="tooltip-base">#{I18n.t('units.base')}: #{ERB::Util.html_escape(unit.base_size)}</div>)
  end

  def special_rules_html(unit)
    return "" unless unit.special_rules.present?
    %(<div class="tooltip-rules">#{ERB::Util.html_escape(unit.special_rules)}</div>)
  end
end
