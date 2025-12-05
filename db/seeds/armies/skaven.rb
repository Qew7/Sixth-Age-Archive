# frozen_string_literal: true

# Skaven - Ravening Hordes
SKAVEN_UNITS = [
  # Lords
  { name: "Grey Seer", unit_type: "lord", base_cost: 240, min_size: 1, max_size: 1, base_size: "20x20mm / Screaming Bell",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 3, "T" => 4, "W" => 3, "I" => 5, "A" => 1, "Ld" => 7 },
    special_rules: "Level 3 Wizard (Skaven Magic), may upgrade to Level 4, may ride Screaming Bell" },
  { name: "Warlord", unit_type: "lord", base_cost: 105, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 5, "WS" => 6, "BS" => 4, "S" => 5, "T" => 4, "W" => 3, "I" => 6, "A" => 4, "Ld" => 7 },
    special_rules: "Lead from the Back, may ride Rat Ogre Bonebreaker or War-litter" },
  { name: "Vermin Lord", unit_type: "lord", base_cost: 500, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 8, "WS" => 8, "BS" => 6, "S" => 6, "T" => 5, "W" => 5, "I" => 10, "A" => 6, "Ld" => 8 },
    special_rules: "Daemon, Terror, Level 4 Wizard (Skaven Magic), Scry, Rat Daemon" },

  # Heroes
  { name: "Chieftain", unit_type: "hero", base_cost: 45, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 4, "T" => 4, "W" => 2, "I" => 5, "A" => 3, "Ld" => 6 },
    special_rules: "Lead from the Back, may carry Battle Standard" },
  { name: "Warlock Engineer", unit_type: "hero", base_cost: 45, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Level 1 Wizard (Skaven Magic), may upgrade to Level 2, may have Warplock weapons" },
  { name: "Plague Priest", unit_type: "hero", base_cost: 90, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 3, "S" => 4, "T" => 5, "W" => 2, "I" => 4, "A" => 2, "Ld" => 6 },
    special_rules: "Level 1 Wizard (Plague), Frenzy, may upgrade to Level 2, may ride Plague Furnace" },
  { name: "Assassin", unit_type: "hero", base_cost: 120, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 6, "BS" => 6, "S" => 4, "T" => 4, "W" => 2, "I" => 7, "A" => 4, "Ld" => 7 },
    special_rules: "Hidden, Killing Blow, Poisoned Attacks, Always Strikes First, Skirmisher" },

  # Core
  { name: "Clanrats", unit_type: "core", base_cost: 40, cost_per_model: 4, min_size: 20, max_size: 50, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Hand Weapon, Light Armour, Shield, Strength in Numbers, may have Weapon Team" },
  { name: "Stormvermin", unit_type: "core", base_cost: 70, cost_per_model: 7, min_size: 10, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 6 },
    special_rules: "Halberd, Heavy Armour, Shield, Strength in Numbers" },
  { name: "Slaves", unit_type: "core", base_cost: 20, cost_per_model: 2, min_size: 20, max_size: 100, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 2, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 4, "A" => 1, "Ld" => 2 },
    special_rules: "Hand Weapon, Expendable, Strength in Numbers, may not have command" },
  { name: "Giant Rats", unit_type: "core", base_cost: 30, cost_per_model: 3, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 2, "BS" => 0, "S" => 3, "T" => 3, "W" => 1, "I" => 4, "A" => 1, "Ld" => 3 },
    special_rules: "Packmaster handlers required (1 per 5 rats)" },
  { name: "Night Runners", unit_type: "core", base_cost: 40, cost_per_model: 8, min_size: 5, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 6 },
    special_rules: "Two Hand Weapons, Skirmishers, Scouts" },

  # Special
  { name: "Plague Monks", unit_type: "special", base_cost: 70, cost_per_model: 7, min_size: 10, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 3, "T" => 4, "W" => 1, "I" => 3, "A" => 1, "Ld" => 5 },
    special_rules: "Two Hand Weapons, Frenzy, Hatred, Strength in Numbers" },
  { name: "Plague Censer Bearers", unit_type: "special", base_cost: 80, cost_per_model: 16, min_size: 5, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 3, "A" => 1, "Ld" => 5 },
    special_rules: "Plague Censer, Frenzy, Skirmishers" },
  { name: "Rat Ogres", unit_type: "special", base_cost: 100, cost_per_model: 50, min_size: 2, max_size: 6, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 0, "S" => 5, "T" => 4, "W" => 3, "I" => 4, "A" => 3, "Ld" => 4 },
    special_rules: "Fear, Frenzy, Packmaster required" },
  { name: "Gutter Runners", unit_type: "special", base_cost: 60, cost_per_model: 12, min_size: 5, max_size: 15, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 6 },
    special_rules: "Two Hand Weapons, Poisoned Attacks, Scouts, Skirmishers" },
  { name: "Jezzails", unit_type: "special", base_cost: 100, cost_per_model: 20, min_size: 5, max_size: 15, base_size: "20x20mm (team)",
    stats: { "M" => 5, "WS" => 3, "BS" => 4, "S" => 6, "T" => 3, "W" => 2, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Warplock Jezzail (36\", S6, Armour Piercing, Move or Fire), Skirmishers, Pavise" },
  { name: "Warpfire Thrower", unit_type: "special", base_cost: 70, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 5, "T" => 3, "W" => 2, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Warpfire (Flame template, S5, Flaming, D3 wounds), may Misfire" },
  { name: "Ratling Gun", unit_type: "special", base_cost: 55, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 3, "S" => 4, "T" => 3, "W" => 2, "I" => 4, "A" => 1, "Ld" => 5 },
    special_rules: "Ratling Gun (2D6 shots, 18\", S4, Armour Piercing), may Misfire" },
  { name: "Warp-Lightning Cannon", unit_type: "special", base_cost: 90, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => "2D6", "T" => 6, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Warp Lightning (10-60\", S=2D6), may Misfire, 3 Skaven Crew" },

  # Rare
  { name: "Hell Pit Abomination", unit_type: "rare", base_cost: 235, min_size: 1, max_size: 1, base_size: "100x100mm",
    stats: { "M" => "3D6", "WS" => 3, "BS" => 0, "S" => 6, "T" => 5, "W" => 6, "I" => 4, "A" => "Special", "Ld" => 8 },
    special_rules: "Terror, Regeneration, Too Horrible to Die, Random Attacks (2D6), Thunderstomp" },
  { name: "Doomwheel", unit_type: "rare", base_cost: 150, min_size: 1, max_size: 1, base_size: "60mm round",
    stats: { "M" => "3D6", "WS" => "-", "BS" => "-", "S" => 6, "T" => 6, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Terror, Random Movement (3D6), D6+1 Impact Hits, Warp Lightning Bolts (3D6 S5 shots)" },
  { name: "Screaming Bell", unit_type: "rare", base_cost: 200, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => "-", "T" => 6, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Pushed by Clanrats (required), Peal of Doom (random effect each turn), Unbreakable, Large Target" },
  { name: "Plague Furnace", unit_type: "rare", base_cost: 150, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => "-", "T" => 6, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Pushed by Plague Monks (required), Great Plague Censer, Fumes of Contagion, Unbreakable" },
  { name: "Warp Lightning Cannon", unit_type: "rare", base_cost: 90, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => "D6+Bounce", "T" => 6, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, 2D6 Strength, may Misfire, 3 Skaven Crew" }
].freeze

SKAVEN_SPECIAL_RULES = [
  { name: "Strength in Numbers", category: "rule", description: "Add +1 to Leadership for each rank after the first (up to +3). Skaven never use General's Leadership." },
  { name: "Lead from the Back", category: "rule", description: "Skaven characters prefer to be in rear ranks. May allocate attacks to front rank models." },
  { name: "Expendable", category: "rule", description: "Other Skaven units do not take Panic tests if this unit is destroyed. May be shot into in close combat." },
  { name: "Skaven Magic", category: "rule", description: "Skaven use Lores of Ruin (destructive warpstone magic) and Plague (diseases)." },
  { name: "Hidden", category: "rule", description: "Assassin deploys within a friendly unit. Revealed when in combat or any time before shooting." },
  { name: "Plague Censer", category: "weapon", description: "All models in base contact (friend or foe) suffer automatic S2 hits with no armour save. Poisoned Attacks." },
  { name: "Warplock Jezzail", category: "weapon", description: "Range 36\", S6, Armour Piercing, Move or Fire. Requires two Skaven to operate." },
  { name: "Pavise", category: "armour", description: "Large shield. +2 Armour Save against shooting from front." },
  { name: "Packmaster", category: "rule", description: "Handler for Giant Rats or Rat Ogres. Unit uses Packmaster's Leadership. Required 1 per 5 Giant Rats or 2 Rat Ogres." },
  { name: "Too Horrible to Die", category: "rule", description: "When Hell Pit Abomination dies, roll D6: 1-2 Dead, 3-4 Back with D3 wounds, 5-6 Stand back up with D6 wounds and S6 template." },
  { name: "Peal of Doom", category: "rule", description: "Roll 2D6 at start of each Skaven turn for random effect: nothing, enemy panic tests, restore wounds, extra spells, etc." },
  { name: "Fumes of Contagion", category: "rule", description: "Enemy units in base contact must pass T test or suffer wound with no armour save." },
  { name: "Great Plague Censer", category: "weapon", description: "At start of combat, all enemy models in base contact take automatic S5 hits with no armour save." },
  { name: "Rat Daemon", category: "rule", description: "Vermin Lord is a Daemon of the Horned Rat. Has all Daemon special rules." },
  { name: "Scry", category: "rule", description: "Vermin Lord may re-roll one dice per turn (to hit, wound, cast, etc.)." }
].freeze

def seed_skaven
  ArmySeeder.seed_army("Skaven", SKAVEN_UNITS)

  SKAVEN_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end
