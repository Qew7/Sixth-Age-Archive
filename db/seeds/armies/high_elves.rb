# frozen_string_literal: true

# High Elves - Ravening Hordes
HIGH_ELVES_UNITS = [
  # Lords
  { name: "High Elf Prince", unit_type: "lord", base_cost: 100, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 5, "WS" => 7, "BS" => 7, "S" => 4, "T" => 3, "W" => 3, "I" => 8, "A" => 4, "Ld" => 10 },
    special_rules: "Always Strikes First, may ride Elven Steed, Great Eagle, or Dragon" },
  { name: "Archmage", unit_type: "lord", base_cost: 225, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 3, "I" => 5, "A" => 1, "Ld" => 9 },
    special_rules: "Level 3 Wizard, High Magic, Always Strikes First, may be upgraded to Level 4" },

  # Heroes
  { name: "High Elf Noble", unit_type: "hero", base_cost: 70, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 5, "WS" => 6, "BS" => 6, "S" => 4, "T" => 3, "W" => 2, "I" => 7, "A" => 3, "Ld" => 9 },
    special_rules: "Always Strikes First, may carry Battle Standard, may ride Elven Steed or Great Eagle" },
  { name: "Mage", unit_type: "hero", base_cost: 100, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 2, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Level 1 Wizard, High Magic, Always Strikes First, may be upgraded to Level 2" },

  # Core
  { name: "Spearmen", unit_type: "core", base_cost: 90, cost_per_model: 9, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Spear, Light Armour, Shield, Always Strikes First, Fight in 3 ranks" },
  { name: "Archers", unit_type: "core", base_cost: 110, cost_per_model: 11, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Longbow, Always Strikes First" },
  { name: "Silver Helms", unit_type: "core", base_cost: 105, cost_per_model: 21, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Lance, Heavy Armour, Shield, Elven Steed, Always Strikes First" },
  { name: "Ellyrian Reavers", unit_type: "core", base_cost: 95, cost_per_model: 19, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Spear, Bow, Fast Cavalry, Always Strikes First" },

  # Special
  { name: "Swordmasters of Hoeth", unit_type: "special", base_cost: 150, cost_per_model: 15, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 6, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 2, "Ld" => 8 },
    special_rules: "Great Weapon, Heavy Armour, Always Strikes First, Deflect Shots" },
  { name: "White Lions of Chrace", unit_type: "special", base_cost: 130, cost_per_model: 13, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 4, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Lion Cloak, Great Weapon, Always Strikes First, Stubborn, Woodsmen" },
  { name: "Phoenix Guard", unit_type: "special", base_cost: 150, cost_per_model: 15, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 6, "A" => 1, "Ld" => 9 },
    special_rules: "Halberd, Heavy Armour, Always Strikes First, 4+ Ward Save, Fear, Cause Fear" },
  { name: "Dragon Princes of Caledor", unit_type: "special", base_cost: 150, cost_per_model: 30, min_size: 5, max_size: 12, base_size: "25x50mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 6, "A" => 2, "Ld" => 9 },
    special_rules: "Lance, Dragon Armour (2+ vs Fire), Elven Steed, Always Strikes First" },
  { name: "Shadow Warriors", unit_type: "special", base_cost: 140, cost_per_model: 14, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 5, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Longbow, Hand Weapon, Skirmishers, Scouts, Always Strikes First, Hatred Dark Elves" },
  { name: "Tiranoc Chariot", unit_type: "special", base_cost: 85, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 9, "WS" => "-", "BS" => "-", "S" => 4, "T" => 4, "W" => 4, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6 Impact Hits, 2 Elf Crew with Spears and Bows, 2 Elven Steeds" },
  { name: "Bolt Thrower", unit_type: "special", base_cost: 100, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 6, "T" => 7, "W" => 2, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Bolt Thrower, D3 Wounds, 2 Elf Crew" },

  # Rare
  { name: "Great Eagle", unit_type: "rare", base_cost: 50, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 2, "WS" => 5, "BS" => 0, "S" => 4, "T" => 4, "W" => 3, "I" => 4, "A" => 2, "Ld" => 8 },
    special_rules: "Fly, Large Target" },
  { name: "Lion Chariot of Chrace", unit_type: "rare", base_cost: 140, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 8, "WS" => "-", "BS" => "-", "S" => 5, "T" => 5, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6+1 Impact Hits, 2 White Lion Crew, 2 War Lions" },
  { name: "Dragon", unit_type: "rare", base_cost: 320, min_size: 1, max_size: 1, base_size: "100x150mm",
    stats: { "M" => 6, "WS" => 6, "BS" => 0, "S" => 6, "T" => 6, "W" => 6, "I" => 3, "A" => 5, "Ld" => 8 },
    special_rules: "Fly, Large Target, Terror, Breath Weapon (S4 Flaming), Scaly Skin 3+" }
].freeze

HIGH_ELF_SPECIAL_RULES = [
  { name: "Always Strikes First", category: "rule", description: "High Elves always strike first in close combat regardless of Initiative or who charged. If opponent also has ASF, use Initiative." },
  { name: "High Magic", category: "rule", description: "High Elf mages may use High Magic lore. Includes powerful spells like Drain Magic and Shield of Saphery." },
  { name: "Fight in 3 ranks", category: "rule", description: "High Elf Spearmen may fight in 3 ranks instead of the normal 2." },
  { name: "Deflect Shots", category: "rule", description: "Swordmasters have 6+ Ward Save against missile attacks." },
  { name: "Lion Cloak", category: "armour", description: "Counts as Light Armour. Immune to special effects of enemy mundane missile weapons." },
  { name: "Woodsmen", category: "rule", description: "White Lions treat forests as open terrain for movement." },
  { name: "Dragon Armour", category: "armour", description: "Heavy Armour (5+ save) with 2+ Ward Save against fire attacks." },
  { name: "Elven Steed", category: "equipment", description: "Cavalry mount. M9, WS3, S3, T3, W1, I4, A1, Ld5. Fast and graceful." },
  { name: "War Lions", category: "equipment", description: "Pulls Lion Chariot. M8, WS5, S5, T4, W1, I4, A2, Ld8." },
  { name: "Breath Weapon", category: "rule", description: "Once per game, model may use Breath Weapon instead of attacks. Use flame template, S4 Flaming hits on all models touched." }
].freeze

def seed_high_elves
  ArmySeeder.seed_army("High Elves", HIGH_ELVES_UNITS)
  
  HIGH_ELF_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

