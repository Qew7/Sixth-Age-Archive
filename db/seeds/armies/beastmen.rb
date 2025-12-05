# frozen_string_literal: true

# Beastmen - Beasts of Chaos / Ravening Hordes
BEASTMEN_UNITS = [
  # Lords
  { name: "Beastlord", unit_type: "lord", base_cost: 105, min_size: 1, max_size: 1, base_size: "25x25mm / 50x100mm on Chariot",
    stats: { "M" => 5, "WS" => 7, "BS" => 3, "S" => 5, "T" => 5, "W" => 3, "I" => 6, "A" => 5, "Ld" => 9 },
    special_rules: "Primal Fury, Beastman Ambush, may ride Tuskgor Chariot, Razorgor Chariot" },
  { name: "Great Bray-Shaman", unit_type: "lord", base_cost: 200, min_size: 1, max_size: 1, base_size: "25x25mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 3, "S" => 4, "T" => 5, "W" => 3, "I" => 4, "A" => 2, "Ld" => 8 },
    special_rules: "Level 3 Wizard (Wild Magic), may upgrade to Level 4, Primal Fury" },
  { name: "Doombull", unit_type: "lord", base_cost: 225, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 6, "WS" => 6, "BS" => 3, "S" => 6, "T" => 5, "W" => 5, "I" => 4, "A" => 5, "Ld" => 9 },
    special_rules: "Bloodgreed, Fear, Immune to Psychology" },

  # Heroes
  { name: "Wargor", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1, base_size: "25x25mm",
    stats: { "M" => 5, "WS" => 6, "BS" => 3, "S" => 4, "T" => 5, "W" => 2, "I" => 5, "A" => 4, "Ld" => 8 },
    special_rules: "Primal Fury, may carry Battle Standard, may ride Tuskgor Chariot" },
  { name: "Bray-Shaman", unit_type: "hero", base_cost: 75, min_size: 1, max_size: 1, base_size: "25x25mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Level 1 Wizard (Wild Magic), may upgrade to Level 2, Primal Fury" },
  { name: "Gorebull", unit_type: "hero", base_cost: 130, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 5, "BS" => 3, "S" => 5, "T" => 5, "W" => 4, "I" => 4, "A" => 4, "Ld" => 8 },
    special_rules: "Bloodgreed, Fear, may carry Battle Standard" },

  # Core
  { name: "Gors", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 40, base_size: "25x25mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Two Hand Weapons, Primal Fury, Beastman Ambush" },
  { name: "Ungors", unit_type: "core", base_cost: 30, cost_per_model: 3, min_size: 10, max_size: 50, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 6 },
    special_rules: "Spear, Shield, Primal Fury, Beastman Ambush" },
  { name: "Ungor Raiders", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 6 },
    special_rules: "Shortbow, Skirmishers, Primal Fury, Beastman Ambush, Scouts" },
  { name: "Tuskgor Chariot", unit_type: "core", base_cost: 80, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 7, "WS" => "-", "BS" => "-", "S" => 5, "T" => 4, "W" => 4, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6+1 Impact Hits, 2 Gor Crew, 2 Tuskgors, Primal Fury" },
  { name: "Warhounds of Chaos", unit_type: "core", base_cost: 30, cost_per_model: 6, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 7, "WS" => 4, "BS" => 0, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 5 },
    special_rules: "Fast Cavalry" },

  # Special
  { name: "Bestigors", unit_type: "special", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30, base_size: "25x25mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Great Weapon, Heavy Armour, Primal Fury, Beastman Ambush" },
  { name: "Minotaurs", unit_type: "special", base_cost: 165, cost_per_model: 55, min_size: 3, max_size: 9, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 3, "S" => 5, "T" => 4, "W" => 3, "I" => 3, "A" => 3, "Ld" => 7 },
    special_rules: "Great Weapon, Bloodgreed, Fear" },
  { name: "Centigors", unit_type: "special", base_cost: 105, cost_per_model: 21, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 8, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Spear, Light Armour, Shield, Drunken, Fast Cavalry, Primal Fury" },
  { name: "Harpies", unit_type: "special", base_cost: 55, cost_per_model: 11, min_size: 5, max_size: 15, base_size: "25x25mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 0, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 2, "Ld" => 6 },
    special_rules: "Fly, Unit Strength 1" },
  { name: "Razorgor", unit_type: "special", base_cost: 55, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 7, "WS" => 4, "BS" => 0, "S" => 5, "T" => 5, "W" => 3, "I" => 3, "A" => 4, "Ld" => 4 },
    special_rules: "Fear, Armour Piercing" },
  { name: "Razorgor Chariot", unit_type: "special", base_cost: 145, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 7, "WS" => "-", "BS" => "-", "S" => 5, "T" => 5, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6+1 Impact Hits (Armour Piercing), 2 Gor Crew, 1 Razorgor, Fear" },

  # Rare
  { name: "Cygor", unit_type: "rare", base_cost: 275, min_size: 1, max_size: 1, base_size: "50x75mm",
    stats: { "M" => 6, "WS" => 2, "BS" => 1, "S" => 6, "T" => 5, "W" => 5, "I" => 1, "A" => 5, "Ld" => 8 },
    special_rules: "Terror, Large Target, Stone Throw (catapult), Ghost Sight, Soul-Eater" },
  { name: "Ghorgon", unit_type: "rare", base_cost: 275, min_size: 1, max_size: 1, base_size: "50x75mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 0, "S" => 6, "T" => 5, "W" => 6, "I" => 3, "A" => 6, "Ld" => 8 },
    special_rules: "Terror, Large Target, Bloodgreed, Swallow Whole" },
  { name: "Jabberslythe", unit_type: "rare", base_cost: 275, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 0, "S" => 5, "T" => 5, "W" => 5, "I" => 3, "A" => 5, "Ld" => 4 },
    special_rules: "Fly, Terror, Large Target, Poisoned Attacks, Aura of Madness" },
  { name: "Giant", unit_type: "rare", base_cost: 205, min_size: 1, max_size: 1, base_size: "50x75mm",
    stats: { "M" => 6, "WS" => 3, "BS" => "-", "S" => 6, "T" => 5, "W" => 6, "I" => 3, "A" => "Special", "Ld" => 10 },
    special_rules: "Terror, Stubborn, Large Target, Fall Over, Giant Special Attacks" },
  { name: "Chaos Spawn", unit_type: "rare", base_cost: 55, cost_per_model: 55, min_size: 1, max_size: 3, base_size: "50x50mm",
    stats: { "M" => "2D6", "WS" => 3, "BS" => 0, "S" => 4, "T" => 5, "W" => 3, "I" => 2, "A" => "D6+1", "Ld" => 10 },
    special_rules: "Fear, Unbreakable, Random Movement, Random Attacks, Immune to Psychology" }
].freeze

BEASTMEN_SPECIAL_RULES = [
  { name: "Primal Fury", category: "rule", description: "At start of combat, roll Ld. If passed, unit gains Hatred this round. If double 1, also gains Frenzy." },
  { name: "Beastman Ambush", category: "rule", description: "Units may be kept in reserve and enter from any table edge from Turn 2+ on 3+." },
  { name: "Bloodgreed", category: "rule", description: "Minotaurs must overrun or pursue if they win combat. Gain +1 Attack after winning combat." },
  { name: "Wild Magic", category: "rule", description: "Beastmen shamans use the Lore of the Wild. Savage, primal magic." },
  { name: "Drunken", category: "rule", description: "Centigors may re-roll failed Primal Fury tests but suffer -1 Initiative." },
  { name: "Ghost Sight", category: "rule", description: "Cygor may target enemy wizards regardless of line of sight. -1 to casting for wizards within 24\"." },
  { name: "Soul-Eater", category: "rule", description: "Cygor heals 1 wound each time an enemy wizard miscasts within 24\"." },
  { name: "Swallow Whole", category: "rule", description: "Ghorgon may forgo normal attacks to swallow a single model whole. One model in base contact must pass I test or be removed from play." },
  { name: "Aura of Madness", category: "rule", description: "Enemy units within 12\" of Jabberslythe at start of turn must pass Ld test or suffer D6 S3 hits." },
  { name: "Tuskgor", category: "equipment", description: "Beast that pulls chariots. M7, WS3, S4, T4, W1, I3, A1, Ld4." }
].freeze

def seed_beastmen
  ArmySeeder.seed_army("Beastmen", BEASTMEN_UNITS)

  BEASTMEN_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end
