# frozen_string_literal: true

# Bretonnia - Ravening Hordes
BRETONNIA_UNITS = [
  # Lords
  { name: "Bretonnian Lord", unit_type: "lord", base_cost: 80, min_size: 1, max_size: 1, base_size: "25x50mm / 50x50mm on Pegasus",
    stats: { "M" => 4, "WS" => 6, "BS" => 3, "S" => 4, "T" => 4, "W" => 3, "I" => 6, "A" => 4, "Ld" => 9 },
    special_rules: "Knight's Vow, Blessing of the Lady, must ride Barded Warhorse, may ride Royal Pegasus or Hippogryph" },
  { name: "Prophetess of the Lady", unit_type: "lord", base_cost: 165, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 3, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Level 3 Wizard (Lore of Beasts, Life, or Heavens), may upgrade to Level 4, may not ride horse" },

  # Heroes
  { name: "Paladin", unit_type: "hero", base_cost: 55, min_size: 1, max_size: 1, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 5, "A" => 3, "Ld" => 8 },
    special_rules: "Knight's Vow, Blessing of the Lady, must ride Barded Warhorse, may carry Battle Standard" },
  { name: "Damsel", unit_type: "hero", base_cost: 55, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Level 1 Wizard (Lore of Beasts, Life, or Heavens), may upgrade to Level 2" },

  # Core
  { name: "Knights of the Realm", unit_type: "core", base_cost: 120, cost_per_model: 24, min_size: 5, max_size: 12, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Lance, Heavy Armour, Shield, Barded Warhorse, Knight's Vow, Blessing of the Lady, Lance Formation" },
  { name: "Knights Errant", unit_type: "core", base_cost: 100, cost_per_model: 20, min_size: 5, max_size: 12, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Lance, Heavy Armour, Shield, Warhorse, Impetuous, Blessing of the Lady, Lance Formation" },
  { name: "Men-at-Arms", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 5 },
    special_rules: "Halberd or Spear, Light Armour, Shield, Peasant's Duty" },
  { name: "Peasant Bowmen", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 5 },
    special_rules: "Longbow, Hand Weapon, Defensive Stakes, Peasant's Duty, may Skirmish" },
  { name: "Mounted Yeomen", unit_type: "core", base_cost: 70, cost_per_model: 14, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 6 },
    special_rules: "Spear, Shield, Fast Cavalry, Expendable, Peasant's Duty" },

  # Special
  { name: "Questing Knights", unit_type: "special", base_cost: 120, cost_per_model: 24, min_size: 5, max_size: 12, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 3, "W" => 1, "I" => 3, "A" => 2, "Ld" => 8 },
    special_rules: "Great Weapon, Heavy Armour, Questing Vow, Blessing of the Lady, may not use lances" },
  { name: "Pegasus Knights", unit_type: "special", base_cost: 165, cost_per_model: 55, min_size: 3, max_size: 9, base_size: "50x50mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Lance, Heavy Armour, Shield, Pegasus mount, Fly, Knight's Vow, Blessing of the Lady" },
  { name: "Battle Pilgrims", unit_type: "special", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 8 },
    special_rules: "Hand Weapon, Shield, Blessing of the Lady, Grail Reliquae Bearer, Immune to Psychology" },
  { name: "Grail Reliquae", unit_type: "special", base_cost: 60, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => "-", "T" => "-", "W" => "-", "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Blessing of the Lady, Stubborn, Immune to Psychology, Unit gets +1 Combat Resolution" },
  { name: "Field Trebuchet", unit_type: "special", base_cost: 90, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Stone Thrower, Guess Range, Large blast, 3 Peasant Crew" },

  # Rare
  { name: "Grail Knights", unit_type: "rare", base_cost: 190, cost_per_model: 38, min_size: 5, max_size: 10, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 5, "A" => 2, "Ld" => 9 },
    special_rules: "Lance, Heavy Armour, Shield, Barded Warhorse, Grail Vow, Blessing of the Lady, Immune to Psychology, Magic Resistance (2)" }
].freeze

BRETONNIA_SPECIAL_RULES = [
  { name: "Blessing of the Lady", category: "rule", description: "5+ Ward Save against non-magical attacks. Lost if unit flees, pursues fleeing enemy, or attacks unit in flank/rear (Knights only)." },
  { name: "Lance Formation", category: "rule", description: "Bretonnian knight units attack in special formation. All models in first two ranks may attack." },
  { name: "Knight's Vow", category: "rule", description: "Must always accept challenges. Must always pursue fleeing enemy. May not attack peasant units." },
  { name: "Questing Vow", category: "rule", description: "May not use lances. Immune to Psychology. May re-roll failed Break tests." },
  { name: "Grail Vow", category: "rule", description: "Immune to Psychology. Magic Resistance (2). Does not lose Blessing for pursuing." },
  { name: "Impetuous", category: "rule", description: "Knights Errant must charge if able. May re-roll failed charge distances." },
  { name: "Peasant's Duty", category: "rule", description: "Must test on General's Leadership. Cannot use Inspiring Presence. Knights may fire into combat containing only peasants." },
  { name: "Defensive Stakes", category: "equipment", description: "May deploy stakes before battle. Enemies charging unit count as charging through dangerous terrain." },
  { name: "Royal Pegasus", category: "equipment", description: "Flying mount for Lords. M8, WS3, S4, T4, W3, I4, A2, Ld6. Fly." },
  { name: "Hippogryph", category: "equipment", description: "Monstrous flying mount. M8, WS5, S5, T5, W4, I5, A4, Ld8. Fly, Terror, Killing Blow." },
  { name: "Grail Reliquae Bearer", category: "rule", description: "Battle Pilgrims unit may include one Grail Reliquae. Unit becomes Stubborn and Immune to Psychology." }
].freeze

def seed_bretonnia
  ArmySeeder.seed_army("Bretonnia", BRETONNIA_UNITS)
  
  BRETONNIA_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

