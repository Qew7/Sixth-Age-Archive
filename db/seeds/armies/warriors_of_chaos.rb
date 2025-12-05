# frozen_string_literal: true

# Warriors of Chaos - Ravening Hordes / Hordes of Chaos
WARRIORS_OF_CHAOS_UNITS = [
  # Lords
  { name: "Chaos Lord", unit_type: "lord", base_cost: 130, min_size: 1, max_size: 1, base_size: "25x25mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 8, "BS" => 3, "S" => 5, "T" => 5, "W" => 3, "I" => 7, "A" => 5, "Ld" => 9 },
    special_rules: "Mark of Chaos, Eye of the Gods, may ride Chaos Steed, Daemonic Mount, Chaos Chariot, Manticore, or Dragon" },
  { name: "Chaos Sorcerer Lord", unit_type: "lord", base_cost: 235, min_size: 1, max_size: 1, base_size: "25x25mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 3, "I" => 5, "A" => 2, "Ld" => 8 },
    special_rules: "Level 3 Wizard, Mark of Chaos (determines Lore), may upgrade to Level 4" },
  { name: "Daemon Prince", unit_type: "lord", base_cost: 450, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 8, "WS" => 9, "BS" => 5, "S" => 6, "T" => 5, "W" => 5, "I" => 8, "A" => 5, "Ld" => 9 },
    special_rules: "Daemon, Terror, Fly (optional), Mark of Chaos (required), 5+ Ward Save" },

  # Heroes
  { name: "Exalted Hero", unit_type: "hero", base_cost: 80, min_size: 1, max_size: 1, base_size: "25x25mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 7, "BS" => 3, "S" => 5, "T" => 4, "W" => 2, "I" => 6, "A" => 4, "Ld" => 8 },
    special_rules: "Mark of Chaos, Eye of the Gods, may carry Battle Standard" },
  { name: "Chaos Sorcerer", unit_type: "hero", base_cost: 110, min_size: 1, max_size: 1, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 4, "A" => 1, "Ld" => 8 },
    special_rules: "Level 1 Wizard, Mark of Chaos (determines Lore), may upgrade to Level 2" },

  # Core
  { name: "Chaos Warriors", unit_type: "core", base_cost: 150, cost_per_model: 15, min_size: 10, max_size: 24, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 5, "A" => 2, "Ld" => 8 },
    special_rules: "Hand Weapon, Chaos Armour (4+), Shield, Mark of Chaos (optional)" },
  { name: "Chaos Marauders", unit_type: "core", base_cost: 40, cost_per_model: 4, min_size: 10, max_size: 50, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 4, "A" => 1, "Ld" => 7 },
    special_rules: "Hand Weapon, Light Armour, Mark of Chaos (optional)" },
  { name: "Marauder Horsemen", unit_type: "core", base_cost: 65, cost_per_model: 13, min_size: 5, max_size: 20, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 4, "A" => 1, "Ld" => 7 },
    special_rules: "Spear, Shield, Fast Cavalry, Mark of Chaos (optional)" },
  { name: "Chaos Warhounds", unit_type: "core", base_cost: 30, cost_per_model: 6, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 7, "WS" => 4, "BS" => 0, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 5 },
    special_rules: "Fast Cavalry, may upgrade to Scaly Skin or Poisoned Attacks" },

  # Special
  { name: "Chaos Knights", unit_type: "special", base_cost: 200, cost_per_model: 40, min_size: 5, max_size: 12, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 5, "A" => 2, "Ld" => 8 },
    special_rules: "Lance, Chaos Armour (4+), Shield, Barded Chaos Steed, Mark of Chaos (optional), Fear" },
  { name: "Chosen", unit_type: "special", base_cost: 180, cost_per_model: 18, min_size: 10, max_size: 20, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 6, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 6, "A" => 2, "Ld" => 9 },
    special_rules: "Hand Weapon, Chaos Armour (4+), Shield, Mark of Chaos (optional), Chosen of the Gods" },
  { name: "Chaos Ogres", unit_type: "special", base_cost: 90, cost_per_model: 30, min_size: 3, max_size: 6, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 2, "S" => 4, "T" => 4, "W" => 3, "I" => 2, "A" => 3, "Ld" => 7 },
    special_rules: "Great Weapon or Two Hand Weapons, Light Armour, Fear, Mark of Chaos (optional)" },
  { name: "Chaos Chariot", unit_type: "special", base_cost: 120, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 8, "WS" => "-", "BS" => "-", "S" => 5, "T" => 5, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6+1 Impact Hits, 2 Warriors with Great Weapons, 2 Chaos Steeds, Mark of Chaos (optional)" },
  { name: "Forsaken", unit_type: "special", base_cost: 90, cost_per_model: 18, min_size: 5, max_size: 20, base_size: "25x25mm",
    stats: { "M" => "D6+1", "WS" => 4, "BS" => 0, "S" => 4, "T" => 4, "W" => 1, "I" => 4, "A" => "D3", "Ld" => 8 },
    special_rules: "Frenzy, Random Movement (D6+1), Random Attacks (D3), Immune to Psychology" },
  { name: "Trolls", unit_type: "special", base_cost: 120, cost_per_model: 40, min_size: 3, max_size: 6, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 1, "S" => 5, "T" => 4, "W" => 3, "I" => 1, "A" => 3, "Ld" => 4 },
    special_rules: "Fear, Regeneration, Stupidity, Vomit Attack" },

  # Rare
  { name: "Chaos Spawn", unit_type: "rare", base_cost: 55, cost_per_model: 55, min_size: 1, max_size: 3, base_size: "50x50mm",
    stats: { "M" => "2D6", "WS" => 3, "BS" => 0, "S" => 4, "T" => 5, "W" => 3, "I" => 2, "A" => "D6+1", "Ld" => 10 },
    special_rules: "Fear, Unbreakable, Random Movement, Random Attacks, Immune to Psychology" },
  { name: "Dragon Ogres", unit_type: "rare", base_cost: 210, cost_per_model: 70, min_size: 3, max_size: 6, base_size: "50x100mm",
    stats: { "M" => 7, "WS" => 4, "BS" => 1, "S" => 5, "T" => 4, "W" => 4, "I" => 2, "A" => 4, "Ld" => 8 },
    special_rules: "Great Weapon, Fear, Large Target, Lightning Empowered, Immune to Lightning" },
  { name: "Hellcannon", unit_type: "rare", base_cost: 205, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => 3, "WS" => 4, "BS" => 3, "S" => 5, "T" => 6, "W" => 5, "I" => 1, "A" => 4, "Ld" => 4 },
    special_rules: "War Machine (sort of), Stone Thrower (S5 Panic), Rampage, 3 Chaos Dwarf Crew, Daemon, Terror" },
  { name: "Chaos Giant", unit_type: "rare", base_cost: 225, min_size: 1, max_size: 1, base_size: "50x75mm",
    stats: { "M" => 6, "WS" => 3, "BS" => "-", "S" => 6, "T" => 5, "W" => 6, "I" => 3, "A" => "Special", "Ld" => 10 },
    special_rules: "Terror, Stubborn, Large Target, Fall Over, Giant Special Attacks, Mark of Chaos (optional)" },
  { name: "Shaggoth", unit_type: "rare", base_cost: 265, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 6, "WS" => 6, "BS" => 2, "S" => 6, "T" => 5, "W" => 5, "I" => 4, "A" => 6, "Ld" => 9 },
    special_rules: "Great Weapon, Terror, Large Target, Lightning Empowered, Immune to Lightning, Scaly Skin (4+)" },
  { name: "Chaos Dragon", unit_type: "rare", base_cost: 320, min_size: 1, max_size: 1, base_size: "100x150mm",
    stats: { "M" => 6, "WS" => 6, "BS" => 0, "S" => 6, "T" => 6, "W" => 6, "I" => 2, "A" => 5, "Ld" => 8 },
    special_rules: "Fly, Terror, Large Target, Breath Weapon (S4), Scaly Skin 3+, Mount for Lord only" }
].freeze

WARRIORS_OF_CHAOS_SPECIAL_RULES = [
  { name: "Mark of Chaos", category: "rule", description: "Warriors may dedicate to a Chaos God: Khorne (+1 A, Frenzy), Tzeentch (6+ Ward), Nurgle (-1 To Hit in CC), Slaanesh (Immune to Psychology, ASF)." },
  { name: "Mark of Khorne", category: "rule", description: "+1 Attack, Frenzy. May not take magic items. Hatred against Slaanesh." },
  { name: "Mark of Tzeentch", category: "rule", description: "6+ Ward Save. Wizards use Lore of Tzeentch." },
  { name: "Mark of Nurgle", category: "rule", description: "Enemies in base contact are at -1 To Hit in close combat. Wizards use Lore of Nurgle." },
  { name: "Mark of Slaanesh", category: "rule", description: "Immune to Psychology. Always Strikes First." },
  { name: "Eye of the Gods", category: "rule", description: "Roll on the Eye of the Gods table when character kills enemy character or monster in challenge. May gain stat increases or become Spawn." },
  { name: "Chaos Armour", category: "armour", description: "Daemon-forged plate armour. 4+ Armour Save. May be combined with Shield for 3+." },
  { name: "Chosen of the Gods", category: "rule", description: "Roll D3 at start of game: 1=+1 T, 2=+1 WS, 3=+1 A. Applies to entire unit." },
  { name: "Lightning Empowered", category: "rule", description: "Dragon Ogres heal wounds in the Remaining Moves phase if lightning storm is in effect." },
  { name: "Chaos Steed", category: "equipment", description: "Daemonic horse. M8, WS3, S3, T3, W1, I3, A1, Ld5. Fear." },
  { name: "Daemonic Mount", category: "equipment", description: "Powerful daemon-possessed steed. M8, WS4, S4, T4, W2, I4, A2, Ld7. Fear, 5+ Ward Save." },
  { name: "Rampage", category: "rule", description: "Hellcannon must pass Ld test each turn or move D6\" towards nearest unit (friend or foe)." }
].freeze

def seed_warriors_of_chaos
  ArmySeeder.seed_army("Warriors of Chaos", WARRIORS_OF_CHAOS_UNITS)
  
  WARRIORS_OF_CHAOS_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

