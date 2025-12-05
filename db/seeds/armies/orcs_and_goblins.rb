# frozen_string_literal: true

# Orcs & Goblins - Ravening Hordes
ORCS_AND_GOBLINS_UNITS = [
  # Lords
  { name: "Orc Warboss", unit_type: "lord", base_cost: 80, min_size: 1, max_size: 1, base_size: "25x25mm / 40x40mm mounted",
    stats: { "M" => 4, "WS" => 6, "BS" => 3, "S" => 5, "T" => 5, "W" => 3, "I" => 4, "A" => 4, "Ld" => 9 },
    special_rules: "Waaagh!, Size Matters, may ride Boar, Chariot, or Wyvern" },
  { name: "Orc Great Shaman", unit_type: "lord", base_cost: 165, min_size: 1, max_size: 1, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 4, "T" => 5, "W" => 3, "I" => 2, "A" => 1, "Ld" => 8 },
    special_rules: "Level 3 Wizard, Waaagh! Magic, may be upgraded to Level 4" },
  { name: "Goblin Warboss", unit_type: "lord", base_cost: 55, min_size: 1, max_size: 1, base_size: "20x20mm / 50x50mm on Gigantic Spider",
    stats: { "M" => 4, "WS" => 5, "BS" => 4, "S" => 4, "T" => 4, "W" => 3, "I" => 5, "A" => 4, "Ld" => 8 },
    special_rules: "Size Matters, may ride Wolf, Chariot, or Gigantic Spider" },
  { name: "Night Goblin Warboss", unit_type: "lord", base_cost: 50, min_size: 1, max_size: 1, base_size: "20x20mm / 50x100mm on Squig",
    stats: { "M" => 4, "WS" => 5, "BS" => 4, "S" => 4, "T" => 4, "W" => 3, "I" => 5, "A" => 4, "Ld" => 7 },
    special_rules: "Hates Dwarfs, Size Matters, may ride Great Cave Squig" },

  # Heroes
  { name: "Orc Big Boss", unit_type: "hero", base_cost: 55, min_size: 1, max_size: 1, base_size: "25x25mm / 40x40mm mounted",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 4, "T" => 5, "W" => 2, "I" => 3, "A" => 3, "Ld" => 8 },
    special_rules: "Waaagh!, may carry Battle Standard, may ride Boar or Chariot" },
  { name: "Orc Shaman", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 4, "W" => 2, "I" => 2, "A" => 1, "Ld" => 7 },
    special_rules: "Level 1 Wizard, Waaagh! Magic, may be upgraded to Level 2" },
  { name: "Goblin Big Boss", unit_type: "hero", base_cost: 35, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm on Wolf",
    stats: { "M" => 4, "WS" => 4, "BS" => 4, "S" => 4, "T" => 4, "W" => 2, "I" => 4, "A" => 3, "Ld" => 7 },
    special_rules: "Size Matters, may ride Wolf or Chariot" },
  { name: "Goblin Shaman", unit_type: "hero", base_cost: 55, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 6 },
    special_rules: "Level 1 Wizard, Little Waaagh! Magic, may be upgraded to Level 2" },
  { name: "Night Goblin Big Boss", unit_type: "hero", base_cost: 30, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 4, "S" => 4, "T" => 4, "W" => 2, "I" => 4, "A" => 3, "Ld" => 6 },
    special_rules: "Hates Dwarfs, Size Matters" },
  { name: "Night Goblin Shaman", unit_type: "hero", base_cost: 50, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 5 },
    special_rules: "Level 1 Wizard, Little Waaagh! Magic, may consume Madcap Mushrooms" },

  # Core
  { name: "Orc Boyz", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 30, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 7 },
    special_rules: "Choppa, Light Armour, Shield, Animosity" },
  { name: "Orc Big 'Uns", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 25, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 8 },
    special_rules: "Choppa, Light Armour, Shield, Animosity" },
  { name: "Orc Arrer Boyz", unit_type: "core", base_cost: 60, cost_per_model: 6, min_size: 10, max_size: 30, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 7 },
    special_rules: "Bow, Choppa, Animosity" },
  { name: "Goblins", unit_type: "core", base_cost: 20, cost_per_model: 2, min_size: 20, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 5 },
    special_rules: "Hand Weapon, Shield, Light Armour, Animosity, Fear Elves" },
  { name: "Goblin Archers", unit_type: "core", base_cost: 30, cost_per_model: 3, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 5 },
    special_rules: "Shortbow, Hand Weapon, Animosity, Fear Elves" },
  { name: "Night Goblins", unit_type: "core", base_cost: 20, cost_per_model: 2, min_size: 20, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 5 },
    special_rules: "Hand Weapon, Shield, Animosity, Hates Dwarfs, may have Netters or Fanatics" },
  { name: "Goblin Wolf Riders", unit_type: "core", base_cost: 60, cost_per_model: 12, min_size: 5, max_size: 20, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 5 },
    special_rules: "Spear, Shield, Fast Cavalry, Animosity, Fear Elves" },
  { name: "Spider Riders", unit_type: "core", base_cost: 70, cost_per_model: 14, min_size: 5, max_size: 20, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 5 },
    special_rules: "Spear, Shield, Wall Crawler, Poisoned Attacks (spider), Animosity" },

  # Special
  { name: "Black Orcs", unit_type: "special", base_cost: 110, cost_per_model: 11, min_size: 10, max_size: 25, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 8 },
    special_rules: "Heavy Armour, Shield, Armed to da Teef, Immune to Psychology, Quell Animosity" },
  { name: "Orc Boar Boyz", unit_type: "special", base_cost: 110, cost_per_model: 22, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 7 },
    special_rules: "Choppa, Light Armour, Shield, Boar, Animosity" },
  { name: "Savage Orcs", unit_type: "special", base_cost: 60, cost_per_model: 6, min_size: 10, max_size: 30, base_size: "25x25mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 2, "A" => 1, "Ld" => 7 },
    special_rules: "Two Choppas, Frenzy, Warpaint (6+ Ward Save), Animosity" },
  { name: "Squig Hoppers", unit_type: "special", base_cost: 75, cost_per_model: 15, min_size: 5, max_size: 15, base_size: "25x25mm",
    stats: { "M" => "2D6", "WS" => 4, "BS" => 0, "S" => 5, "T" => 3, "W" => 2, "I" => 4, "A" => 3, "Ld" => 5 },
    special_rules: "Random Movement (2D6), Immune to Psychology, Squig Attack" },
  { name: "Orc Boar Chariot", unit_type: "special", base_cost: 80, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 7, "WS" => "-", "BS" => "-", "S" => 5, "T" => 5, "W" => 4, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6+1 Impact Hits, 2 Orc Crew, 2 Boars, Animosity" },
  { name: "Goblin Wolf Chariot", unit_type: "special", base_cost: 60, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 9, "WS" => "-", "BS" => "-", "S" => 4, "T" => 4, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6 Impact Hits, 2 Goblin Crew, 2 Wolves, Animosity" },
  { name: "Spear Chukka", unit_type: "special", base_cost: 35, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 6, "T" => 7, "W" => 2, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Bolt Thrower, D3 Wounds, 3 Orc or Goblin Crew" },
  { name: "Rock Lobber", unit_type: "special", base_cost: 70, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 4, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Stone Thrower, Guess Range, 3 Orc or Goblin Crew" },

  # Rare
  { name: "Night Goblin Squig Herd", unit_type: "rare", base_cost: 60, cost_per_model: 12, min_size: 5, max_size: 20, base_size: "25x25mm",
    stats: { "M" => "2D6", "WS" => 4, "BS" => 0, "S" => 5, "T" => 3, "W" => 1, "I" => 4, "A" => 2, "Ld" => "-" },
    special_rules: "Random Movement, may Go Wild!, Handlers required" },
  { name: "Trolls", unit_type: "rare", base_cost: 120, cost_per_model: 40, min_size: 3, max_size: 6, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 1, "S" => 5, "T" => 4, "W" => 3, "I" => 1, "A" => 3, "Ld" => 4 },
    special_rules: "Fear, Regeneration, Stupidity, Vomit Attack" },
  { name: "Snotling Pump Wagon", unit_type: "rare", base_cost: 40, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => "2D6", "WS" => 2, "BS" => "-", "S" => 2, "T" => 4, "W" => 3, "I" => 3, "A" => "D6", "Ld" => 4 },
    special_rules: "Random Movement, Impact Hits (D6), Unbreakable" },
  { name: "Giant", unit_type: "rare", base_cost: 205, min_size: 1, max_size: 1, base_size: "50x75mm",
    stats: { "M" => 6, "WS" => 3, "BS" => "-", "S" => 6, "T" => 5, "W" => 6, "I" => 3, "A" => "Special", "Ld" => 10 },
    special_rules: "Terror, Stubborn, Large Target, Fall Over, Giant Special Attacks" },
  { name: "Doom Diver Catapult", unit_type: "rare", base_cost: 80, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Stone Thrower, Steer (reduce scatter), 3 Goblin Crew" }
].freeze

ORCS_SPECIAL_RULES = [
  { name: "Animosity", category: "rule", description: "At the start of each turn, roll D6. On 1, unit squabbles (may not move, shoot or fight this turn). On 6, unit is eager (may make free move towards nearest enemy)." },
  { name: "Waaagh!", category: "rule", description: "Once per game, the General may call a Waaagh! All units gain +1 to hit in close combat this turn. Failing an Animosity roll on a Waaagh! turn results in the unit charging nearest enemy." },
  { name: "Size Matters", category: "rule", description: "Goblins may not use the Leadership of Orc characters unless they are in the same unit." },
  { name: "Choppa", category: "weapon", description: "Orc hand weapon. +1 Strength in first round of combat." },
  { name: "Armed to da Teef", category: "rule", description: "Black Orcs carry multiple weapons. May choose each round: two hand weapons, great weapon, or hand weapon and shield." },
  { name: "Quell Animosity", category: "rule", description: "Units within 6\" of Black Orcs may re-roll failed Animosity tests." },
  { name: "Fear Elves", category: "rule", description: "Goblins suffer -1 Leadership when fighting Elves." },
  { name: "Madcap Mushrooms", category: "equipment", description: "Night Goblin Shaman may eat mushrooms to add D6 to casting roll. If doubles rolled, Shaman takes wound." },
  { name: "Wall Crawler", category: "rule", description: "Spider Riders may move over obstacles and difficult terrain without penalty." },
  { name: "Netters", category: "equipment", description: "Enemy unit in base contact with Netters has -1 WS. Once used, netters are removed." },
  { name: "Fanatics", category: "rule", description: "Hidden in unit. Released when enemy within 8\". Move 2D6\" in random direction causing S5 hits. May hit own units." },
  { name: "Go Wild!", category: "rule", description: "If Squig Herd has no handlers, squigs go wild moving in random directions attacking anything they contact." },
  { name: "Vomit Attack", category: "rule", description: "Instead of normal attacks, Troll may make one Vomit Attack: auto-hit, S5, no armour saves." },
  { name: "Fall Over", category: "rule", description: "Giant must test at end of combat if wounded. On fail, falls over in random direction causing hits." },
  { name: "Giant Special Attacks", category: "rule", description: "Giant has special attack table. Roll D6 each round: Yell, Jump Up and Down, Pick Up and..., Swing, Headbutt, or 'Eadbutt." },
  { name: "Warpaint", category: "rule", description: "Savage Orcs have 6+ Ward Save from their magical warpaint." },
  { name: "Waaagh! Magic", category: "rule", description: "Orc Shamans use the Waaagh! Lore of Magic, powered by the collective energy of greenskins." },
  { name: "Little Waaagh! Magic", category: "rule", description: "Goblin Shamans use the Little Waaagh! Lore, full of sneaky and underhanded spells." },
  { name: "Boar", category: "equipment", description: "War boar mount. M7, WS3, S3, T4, W1, I3, A1, Ld3. +1 Strength on the charge." }
].freeze

def seed_orcs_and_goblins
  ArmySeeder.seed_army("Orcs & Goblins", ORCS_AND_GOBLINS_UNITS)
  
  # Add special rules
  ORCS_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

