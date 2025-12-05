# frozen_string_literal: true

# The Empire - Army Book 2000 / Ravening Hordes
EMPIRE_UNITS = [
  # Lords
  { name: "General of the Empire", unit_type: "lord", base_cost: 65, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 5, "BS" => 5, "S" => 4, "T" => 4, "W" => 3, "I" => 5, "A" => 3, "Ld" => 9 },
    special_rules: "May be mounted on Warhorse, Pegasus, or Griffon" },
  { name: "Grand Master", unit_type: "lord", base_cost: 145, min_size: 1, max_size: 1, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 6, "BS" => 5, "S" => 4, "T" => 4, "W" => 3, "I" => 6, "A" => 4, "Ld" => 9 },
    special_rules: "Inner Circle, Knightly Orders, must lead a unit of Knights" },
  { name: "Wizard Lord", unit_type: "lord", base_cost: 165, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 3, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Level 3 Wizard, may be upgraded to Level 4 (+35 pts)" },
  { name: "Arch Lector", unit_type: "lord", base_cost: 155, min_size: 1, max_size: 1, base_size: "20x20mm / War Altar",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 3, "I" => 4, "A" => 2, "Ld" => 9 },
    special_rules: "Prayers of Sigmar, Righteous Fury, Hatred, may ride War Altar" },

  # Heroes
  { name: "Captain of the Empire", unit_type: "hero", base_cost: 50, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 5, "BS" => 5, "S" => 4, "T" => 4, "W" => 2, "I" => 5, "A" => 2, "Ld" => 8 },
    special_rules: "May carry Battle Standard (+25 pts)" },
  { name: "Battle Wizard", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Level 1 Wizard, may be upgraded to Level 2 (+35 pts)" },
  { name: "Warrior Priest", unit_type: "hero", base_cost: 90, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 4, "A" => 2, "Ld" => 8 },
    special_rules: "Prayers of Sigmar, Righteous Fury, Hatred" },
  { name: "Engineer", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 4, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "May join War Machines, re-roll one Artillery dice per turn" },

  # Core
  { name: "State Troops (Swordsmen)", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Hand Weapon, Shield, Light Armour, May have Detachments" },
  { name: "State Troops (Halberdiers)", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Halberds, Light Armour, May have Detachments" },
  { name: "State Troops (Spearmen)", unit_type: "core", base_cost: 45, cost_per_model: 4, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Spears, Shield, Light Armour, May have Detachments" },
  { name: "Handgunners", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Handguns (24\", S4, Move or Fire, Armour Piercing)" },
  { name: "Crossbowmen", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Crossbows (30\", S4, Move or Fire)" },
  { name: "Free Company", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Two Hand Weapons, Skirmishers" },
  { name: "Huntsmen", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Bows, Scouts, Skirmishers" },
  { name: "Knights", unit_type: "core", base_cost: 110, cost_per_model: 22, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Heavy Armour, Shield, Lance, Barded Warhorse" },

  # Special
  { name: "Greatswords", unit_type: "special", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Great Weapons, Heavy Armour, Stubborn, May have Detachments" },
  { name: "Pistoliers", unit_type: "special", base_cost: 95, cost_per_model: 19, min_size: 5, max_size: 10, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Brace of Pistols, Fast Cavalry, Light Armour" },
  { name: "Outriders", unit_type: "special", base_cost: 105, cost_per_model: 21, min_size: 5, max_size: 10, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Repeater Handguns, Fast Cavalry, Light Armour" },
  { name: "Great Cannon", unit_type: "special", base_cost: 100, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 10, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Cannon, 3 crew" },
  { name: "Mortar", unit_type: "special", base_cost: 75, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 3, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Stone Thrower, Guess Range, 3 crew" },

  # Rare
  { name: "Helblaster Volley Gun", unit_type: "rare", base_cost: 110, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, D6 shots per barrel, Misfire, 3 crew" },
  { name: "Helstorm Rocket Battery", unit_type: "rare", base_cost: 115, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Stone Thrower, Inaccurate, 3 crew" },
  { name: "Steam Tank", unit_type: "rare", base_cost: 300, min_size: 1, max_size: 1, base_size: "Large oval base",
    stats: { "M" => "Special", "WS" => "-", "BS" => "-", "S" => 6, "T" => 6, "W" => 10, "I" => "-", "A" => "D6", "Ld" => "-" },
    special_rules: "Unbreakable, Steam Points, Cannon, 1+ Armour Save" },
  { name: "Flagellants", unit_type: "rare", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 2, "Ld" => 10 },
    special_rules: "Unbreakable, Frenzy, Flails, The End is Nigh!" }
].freeze

def seed_empire
  ArmySeeder.seed_army("The Empire", EMPIRE_UNITS)
end

