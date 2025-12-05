# frozen_string_literal: true

module TooltipHelper
  # Генерирует тултип для специального правила
  def rule_tooltip(rule_name, &block)
    description = SpecialRule.description_for(rule_name)
    
    if description.present?
      content = render_tooltip_content(
        title: rule_name,
        body: description
      )
      
      content_tag :span, 
        class: "rule-link cursor-help border-b border-dotted border-amber-600/50 hover:border-amber-400",
        data: { 
          controller: "tooltip",
          tooltip_content_value: content,
          tooltip_position_value: "top",
          action: "mouseenter->tooltip#show mouseleave->tooltip#hide"
        } do
        block_given? ? yield : rule_name
      end
    else
      block_given? ? yield : rule_name
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
    return "" if rules_string.blank?
    
    # Разбиваем по запятым, но сохраняем структуру
    rules = rules_string.split(/,\s*/)
    
    rules.map do |rule|
      # Проверяем есть ли описание для этого правила
      rule_name = rule.strip.gsub(/\s*\([^)]*\)/, '') # Убираем параметры в скобках для поиска
      
      if SpecialRule.find_by_name(rule_name)
        rule_tooltip(rule_name) { rule }
      else
        rule
      end
    end.join(", ").html_safe
  end

  private

  def render_tooltip_content(title:, body:)
    <<~HTML.squish
      <div class="tooltip-title">#{ERB::Util.html_escape(title)}</div>
      <div class="tooltip-body">#{ERB::Util.html_escape(body)}</div>
    HTML
  end

  def render_unit_tooltip(unit)
    stats_html = render_stats_row(unit)
    
    <<~HTML.squish
      <div class="tooltip-unit">
        <div class="tooltip-title">#{ERB::Util.html_escape(unit.name)}</div>
        <div class="tooltip-stats">#{stats_html}</div>
        #{unit_size_html(unit)}
        #{base_size_html(unit)}
        #{special_rules_html(unit)}
        <div class="tooltip-points">#{unit.base_cost} #{t('units.points')}</div>
      </div>
    HTML
  end

  def render_stats_row(unit)
    return "" unless unit.stats.present?
    
    stats = %w[M WS BS S T W I A Ld].map do |stat|
      value = unit.stats[stat] || "-"
      "<span class='stat'><span class='stat-name'>#{stat}</span><span class='stat-value'>#{value}</span></span>"
    end.join
    
    "<div class='stats-row'>#{stats}</div>"
  end

  def unit_size_html(unit)
    return "" unless unit.min_size && unit.max_size
    
    size_text = if unit.min_size == unit.max_size
      "#{unit.min_size} #{t('units.model', count: unit.min_size)}"
    else
      "#{unit.min_size}-#{unit.max_size} #{t('units.models')}"
    end
    
    cost_text = unit.cost_per_model.to_i > 0 ? " (+#{unit.cost_per_model} #{t('units.pts_per_model')})" : ""
    
    "<div class='tooltip-size'>#{size_text}#{cost_text}</div>"
  end

  def base_size_html(unit)
    return "" unless unit.base_size.present?
    "<div class='tooltip-base'>#{t('units.base')}: #{unit.base_size}</div>"
  end

  def special_rules_html(unit)
    return "" unless unit.special_rules.present?
    "<div class='tooltip-rules'>#{ERB::Util.html_escape(unit.special_rules)}</div>"
  end
end

