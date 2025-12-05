# frozen_string_literal: true

# Helper module for seeding army units
module ArmySeeder
  def self.seed_army(army_name, units_data, base_sizes: {})
    army = Army.find_by(name: army_name)
    
    unless army
      puts "  ⚠ Army '#{army_name}' not found, skipping..."
      return
    end
    
    puts "  Creating units for #{army_name}..."
    
    units_data.each do |unit_data|
      unit = Unit.find_or_initialize_by(army: army, name: unit_data[:name])
      unit.unit_type = unit_data[:unit_type]
      unit.base_cost = unit_data[:base_cost]
      unit.cost_per_model = unit_data[:cost_per_model]
      unit.min_size = unit_data[:min_size]
      unit.max_size = unit_data[:max_size]
      unit.stats = unit_data[:stats]
      unit.special_rules = unit_data[:special_rules]
      unit.base_size = base_sizes[unit_data[:name]] || unit_data[:base_size]
      unit.save!
    end
    
    puts "  ✓ #{units_data.count} units created for #{army_name}"
  end
end

