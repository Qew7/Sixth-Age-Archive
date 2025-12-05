# frozen_string_literal: true

# Dwarfs - Ravening Hordes
DWARFS_UNITS = [
  # Lords
  { name: "Dwarf Lord", unit_type: "lord", base_cost: 95, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 7, "BS" => 4, "S" => 4, "T" => 5, "W" => 3, "I" => 4, "A" => 4, "Ld" => 10 },
    special_rules: "Resolute, Relentless, Ancestral Grudge, may ride Shieldbearers or Anvil of Doom" },
  { name: "Runelord", unit_type: "lord", base_cost: 175, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 5, "BS" => 3, "S" => 4, "T" => 5, "W" => 3, "I" => 2, "A" => 2, "Ld" => 10 },
    special_rules: "Resolute, Relentless, Master Rune Smith, +2 Dispel dice, Ancestral Grudge" },

  # Heroes
  { name: "Thane", unit_type: "hero", base_cost: 55, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 6, "BS" => 4, "S" => 4, "T" => 5, "W" => 2, "I" => 3, "A" => 3, "Ld" => 9 },
    special_rules: "Resolute, Relentless, Ancestral Grudge, may carry Battle Standard" },
  { name: "Runesmith", unit_type: "hero", base_cost: 70, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Resolute, Relentless, Rune Smith, +1 Dispel dice, Ancestral Grudge" },
  { name: "Dragon Slayer", unit_type: "hero", base_cost: 50, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 3, "A" => 3, "Ld" => 10 },
    special_rules: "Unbreakable, Slayer, Monster Slayer, Ancestral Grudge" },
  { name: "Engineer", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 4, "BS" => 4, "S" => 3, "T" => 4, "W" => 2, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Resolute, Relentless, May join War Machines, re-roll one Artillery dice" },

  # Core
  { name: "Dwarf Warriors", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 4, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Hand Weapon, Heavy Armour, Shield, Resolute, Relentless, Ancestral Grudge" },
  { name: "Longbeards", unit_type: "core", base_cost: 110, cost_per_model: 11, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Hand Weapon, Heavy Armour, Shield, Resolute, Relentless, Ancestral Grudge, Immune to Panic, Old Grumblers" },
  { name: "Quarrellers", unit_type: "core", base_cost: 110, cost_per_model: 11, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 4, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Crossbow, Hand Weapon, Heavy Armour, Resolute, Relentless, Ancestral Grudge" },
  { name: "Thunderers", unit_type: "core", base_cost: 120, cost_per_model: 12, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 4, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Handgun, Hand Weapon, Heavy Armour, Resolute, Relentless, Ancestral Grudge" },

  # Special
  { name: "Hammerers", unit_type: "special", base_cost: 140, cost_per_model: 14, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Great Weapon, Heavy Armour, Resolute, Relentless, Stubborn, Bodyguard" },
  { name: "Ironbreakers", unit_type: "special", base_cost: 140, cost_per_model: 14, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 10 },
    special_rules: "Hand Weapon, Gromril Armour (4+), Shield, Resolute, Relentless, Stubborn" },
  { name: "Slayers", unit_type: "special", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 4, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 10 },
    special_rules: "Two Hand Weapons or Great Weapon, Unbreakable, Slayer, may upgrade to Giant Slayers" },
  { name: "Miners", unit_type: "special", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 3, "WS" => 4, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Great Weapon, Heavy Armour, Underground Advance, Resolute, Relentless" },
  { name: "Cannon", unit_type: "special", base_cost: 90, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 10, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Cannon, D6 Wounds, 3 Dwarf Crew" },
  { name: "Bolt Thrower", unit_type: "special", base_cost: 45, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 6, "T" => 7, "W" => 2, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Bolt Thrower, D3 Wounds, 2 Dwarf Crew" },
  { name: "Grudge Thrower", unit_type: "special", base_cost: 80, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 4, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Stone Thrower, Guess Range, 3 Dwarf Crew" },

  # Rare
  { name: "Organ Gun", unit_type: "rare", base_cost: 120, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Fires 2D6 S5 shots, Armour Piercing, 3 Dwarf Crew" },
  { name: "Flame Cannon", unit_type: "rare", base_cost: 140, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Flame Template, Flaming Attacks, 3 Dwarf Crew" },
  { name: "Gyrocopter", unit_type: "rare", base_cost: 80, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 10, "WS" => 4, "BS" => 3, "S" => 4, "T" => 5, "W" => 3, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Fly, Steam Gun, Armour Save 4+, Unit Strength 3" },
  { name: "Anvil of Doom", unit_type: "rare", base_cost: 175, min_size: 1, max_size: 1, base_size: "60x100mm",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => "-", "T" => 7, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Unbreakable, 4+ Ward Save, Anvil Strikes (bound spells), Runelord required" }
].freeze

DWARF_SPECIAL_RULES = [
  { name: "Resolute", category: "rule", description: "Dwarfs do not suffer from negative combat resolution modifiers due to fear or terror." },
  { name: "Relentless", category: "rule", description: "Dwarfs may march even if enemy within 8\". May not pursue more than 3D6\"." },
  { name: "Ancestral Grudge", category: "rule", description: "Dwarfs hate Orcs, Goblins, and Skaven. Also hate any army that has wronged them in campaign." },
  { name: "Slayer", category: "rule", description: "Slayers may never have an armour save. Wounds are always resolved at minimum of S4 against Large Targets." },
  { name: "Monster Slayer", category: "rule", description: "Dragon Slayers wound Large Targets on 4+ regardless of Toughness." },
  { name: "Old Grumblers", category: "rule", description: "Longbeards may re-roll failed Panic tests. Units within 6\" may use their Leadership." },
  { name: "Bodyguard", category: "rule", description: "Hammerers are Stubborn while the King/Lord is within 3\". May accept challenges on their character's behalf." },
  { name: "Gromril Armour", category: "armour", description: "Master-forged dwarf armour. 4+ Armour Save. May be combined with shield for 3+." },
  { name: "Underground Advance", category: "rule", description: "Miners may deploy as Ambushers, arriving from any table edge including enemy's." },
  { name: "Rune Smith", category: "rule", description: "May inscribe runes on weapons and armour. Adds +1 to dispel attempts." },
  { name: "Master Rune Smith", category: "rule", description: "May inscribe master runes. Adds +2 to dispel attempts." },
  { name: "Anvil Strikes", category: "rule", description: "Runelord on Anvil may use bound spells each turn: Strike, Wrath, or Oath." },
  { name: "Steam Gun", category: "weapon", description: "Range 18\", S3, D6 shots per turn. Armour Piercing." },
  { name: "Shieldbearers", category: "equipment", description: "Two Longbeards carrying the Lord on a throne. +2 to armour save, +2 Wounds, +2 Attacks." }
].freeze

def seed_dwarfs
  ArmySeeder.seed_army("Dwarfs", DWARFS_UNITS)
  
  DWARF_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

