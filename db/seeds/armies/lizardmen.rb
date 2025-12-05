# frozen_string_literal: true

# Lizardmen - Ravening Hordes
LIZARDMEN_UNITS = [
  # Lords
  { name: "Slann Mage-Priest", unit_type: "lord", base_cost: 400, min_size: 1, max_size: 1, base_size: "40x40mm (on Palanquin)",
    stats: { "M" => 4, "WS" => 3, "BS" => 0, "S" => 4, "T" => 4, "W" => 5, "I" => 2, "A" => 1, "Ld" => 9 },
    special_rules: "Level 4 Wizard (High Magic or any Lore), Cold Blooded, Telepathic Confabulation, Palanquin, Generations" },
  { name: "Oldblood", unit_type: "lord", base_cost: 110, min_size: 1, max_size: 1, base_size: "25x25mm / 40x40mm on Cold One",
    stats: { "M" => 4, "WS" => 6, "BS" => 3, "S" => 5, "T" => 5, "W" => 3, "I" => 4, "A" => 5, "Ld" => 8 },
    special_rules: "Cold Blooded, Predatory Fighter, may ride Cold One, Horned One, or Carnosaur" },

  # Heroes
  { name: "Scar-Veteran", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1, base_size: "25x25mm / 40x40mm on Cold One",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 5, "T" => 4, "W" => 2, "I" => 3, "A" => 4, "Ld" => 8 },
    special_rules: "Cold Blooded, Predatory Fighter, may carry Battle Standard, may ride Cold One or Horned One" },
  { name: "Skink Priest", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 2, "BS" => 3, "S" => 3, "T" => 2, "W" => 2, "I" => 4, "A" => 1, "Ld" => 6 },
    special_rules: "Level 1 Wizard (Heavens), may upgrade to Level 2, Cold Blooded, Aquatic" },
  { name: "Skink Chief", unit_type: "hero", base_cost: 40, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 6, "WS" => 4, "BS" => 5, "S" => 3, "T" => 2, "W" => 2, "I" => 5, "A" => 3, "Ld" => 6 },
    special_rules: "Cold Blooded, Aquatic, may ride Terradon or Ancient Stegadon" },

  # Core
  { name: "Saurus Warriors", unit_type: "core", base_cost: 110, cost_per_model: 11, min_size: 10, max_size: 30, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 0, "S" => 4, "T" => 4, "W" => 1, "I" => 1, "A" => 2, "Ld" => 8 },
    special_rules: "Hand Weapon, Shield, Scaly Skin (6+), Cold Blooded, Predatory Fighter" },
  { name: "Skink Skirmishers", unit_type: "core", base_cost: 60, cost_per_model: 6, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 2, "BS" => 3, "S" => 3, "T" => 2, "W" => 1, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Javelin, Shield, Skirmishers, Cold Blooded, Aquatic" },
  { name: "Skink Cohort", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 2, "BS" => 3, "S" => 3, "T" => 2, "W" => 1, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Hand Weapon, Shield, Cold Blooded, Aquatic, may have Kroxigor attachment" },
  { name: "Saurus Cavalry", unit_type: "core", base_cost: 140, cost_per_model: 28, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 0, "S" => 4, "T" => 4, "W" => 1, "I" => 1, "A" => 2, "Ld" => 8 },
    special_rules: "Spear, Shield, Cold One mount, Scaly Skin (5+), Cold Blooded, Predatory Fighter, Fear, Stupidity" },

  # Special
  { name: "Temple Guard", unit_type: "special", base_cost: 150, cost_per_model: 15, min_size: 10, max_size: 25, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 0, "S" => 4, "T" => 4, "W" => 1, "I" => 1, "A" => 2, "Ld" => 8 },
    special_rules: "Halberd, Light Armour, Shield, Scaly Skin (5+), Cold Blooded, Predatory Fighter, Stubborn" },
  { name: "Chameleon Skinks", unit_type: "special", base_cost: 60, cost_per_model: 12, min_size: 5, max_size: 15, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 2, "BS" => 4, "S" => 3, "T" => 2, "W" => 1, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Blowpipe (Poisoned, 12\"), Scouts, Skirmishers, Cold Blooded, Chameleon (-1 To Hit)" },
  { name: "Kroxigor", unit_type: "special", base_cost: 165, cost_per_model: 55, min_size: 3, max_size: 6, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 0, "S" => 5, "T" => 4, "W" => 3, "I" => 1, "A" => 3, "Ld" => 7 },
    special_rules: "Great Weapon, Scaly Skin (4+), Cold Blooded, Fear, Aquatic" },
  { name: "Terradon Riders", unit_type: "special", base_cost: 90, cost_per_model: 30, min_size: 3, max_size: 6, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 2, "BS" => 3, "S" => 3, "T" => 2, "W" => 2, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Javelin, Terradon mount (Fly), Drop Rocks, Cold Blooded" },
  { name: "Stegadon", unit_type: "special", base_cost: 235, min_size: 1, max_size: 1, base_size: "100x50mm",
    stats: { "M" => 6, "WS" => 3, "BS" => "-", "S" => 5, "T" => 6, "W" => 5, "I" => 2, "A" => "3+D3", "Ld" => 5 },
    special_rules: "Giant Bow, Large Target, Terror, D6+1 Impact Hits, Stubborn, 5 Skink Crew" },

  # Rare
  { name: "Ancient Stegadon", unit_type: "rare", base_cost: 275, min_size: 1, max_size: 1, base_size: "100x50mm",
    stats: { "M" => 6, "WS" => 3, "BS" => "-", "S" => 6, "T" => 6, "W" => 6, "I" => 2, "A" => "3+D6", "Ld" => 6 },
    special_rules: "Engine of the Gods or Giant Blowpipes, Large Target, Terror, D6+1 Impact Hits, 5 Skink Crew" },
  { name: "Carnosaur", unit_type: "rare", base_cost: 225, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 7, "WS" => 4, "BS" => 0, "S" => 5, "T" => 5, "W" => 4, "I" => 3, "A" => 4, "Ld" => 5 },
    special_rules: "Terror, Large Target, Bloodroar, Scaly Skin (4+), Mount for Oldblood only" },
  { name: "Salamanders", unit_type: "rare", base_cost: 75, cost_per_model: 75, min_size: 1, max_size: 3, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 0, "S" => 4, "T" => 4, "W" => 2, "I" => 2, "A" => 2, "Ld" => 4 },
    special_rules: "Spit Fire (Flame template, S4, Flaming), Cold Blooded, Skink handlers required" },
  { name: "Razordon", unit_type: "rare", base_cost: 75, cost_per_model: 75, min_size: 1, max_size: 3, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 0, "S" => 4, "T" => 4, "W" => 2, "I" => 2, "A" => 2, "Ld" => 4 },
    special_rules: "Artillery Barrage (D3 shots, 12\", S4, Armour Piercing), Cold Blooded, Skink handlers required" }
].freeze

LIZARDMEN_SPECIAL_RULES = [
  { name: "Cold Blooded", category: "rule", description: "May roll 3D6 and discard highest when taking Leadership tests." },
  { name: "Predatory Fighter", category: "rule", description: "Each To Hit roll of 6 generates an additional attack. Does not apply to Skinks." },
  { name: "Aquatic", category: "rule", description: "May move through water terrain without penalty. Does not grant benefits against non-aquatic enemies." },
  { name: "Scaly Skin", category: "armour", description: "Natural armour. Scaly Skin (6+) = 6+ save, (5+) = 5+ save, (4+) = 4+ save. Stacks with armour." },
  { name: "Chameleon", category: "rule", description: "-1 To Hit Chameleon Skinks with missile weapons." },
  { name: "Drop Rocks", category: "rule", description: "Terradon Riders may drop rocks once per game. All models flown over take S4 hits." },
  { name: "Giant Bow", category: "weapon", description: "Range 36\", S5, D3 wounds. Mounted on Stegadon, requires 2 crew to fire." },
  { name: "Engine of the Gods", category: "equipment", description: "Ancient Stegadon option. Bound spell: Burning Alignment (affects all units within 4D6\", Flaming)." },
  { name: "Giant Blowpipes", category: "weapon", description: "Ancient Stegadon option. 2D6 S3 Poisoned shots, 12\" range." },
  { name: "Bloodroar", category: "rule", description: "Carnosaur may roar at start of combat. One enemy unit in base contact must pass Ld test or be at -1 To Hit." },
  { name: "Telepathic Confabulation", category: "rule", description: "Slann may cast spells through Skink Priests within 6\", using their line of sight." },
  { name: "Palanquin", category: "equipment", description: "Slann are carried by Temple Guard on a palanquin. Slann must be in Temple Guard unit." },
  { name: "Generations", category: "rule", description: "Slann belong to generations. Higher (2nd-5th) generations have additional abilities and higher cost." },
  { name: "Horned One", category: "equipment", description: "Rare mount for Saurus heroes. M7, WS3, S4, T4, W1, I2, A2. Fear, Armour Piercing attacks." }
].freeze

def seed_lizardmen
  ArmySeeder.seed_army("Lizardmen", LIZARDMEN_UNITS)
  
  LIZARDMEN_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

