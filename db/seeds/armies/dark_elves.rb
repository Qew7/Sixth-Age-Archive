# frozen_string_literal: true

# Dark Elves - Ravening Hordes
DARK_ELVES_UNITS = [
  # Lords
  { name: "Dreadlord", unit_type: "lord", base_cost: 100, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 5, "WS" => 7, "BS" => 7, "S" => 4, "T" => 3, "W" => 3, "I" => 8, "A" => 4, "Ld" => 10 },
    special_rules: "Eternal Hatred, may ride Dark Steed, Cold One, Manticore, or Black Dragon" },
  { name: "Supreme Sorceress", unit_type: "lord", base_cost: 225, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 3, "I" => 5, "A" => 1, "Ld" => 9 },
    special_rules: "Level 3 Wizard (Dark Magic), may upgrade to Level 4, Eternal Hatred" },
  { name: "Malekith (Special Character)", unit_type: "lord", base_cost: 650, min_size: 1, max_size: 1, base_size: "100x150mm",
    stats: { "M" => 5, "WS" => 8, "BS" => 6, "S" => 5, "T" => 4, "W" => 4, "I" => 9, "A" => 5, "Ld" => 10 },
    special_rules: "Witch King, Level 4 Wizard, rides Seraphon (Black Dragon), Destroyer, Armour of Midnight" },

  # Heroes
  { name: "Master", unit_type: "hero", base_cost: 70, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 5, "WS" => 6, "BS" => 6, "S" => 4, "T" => 3, "W" => 2, "I" => 7, "A" => 3, "Ld" => 9 },
    special_rules: "Eternal Hatred, may carry Battle Standard, may ride Dark Steed, Cold One, or Dark Pegasus" },
  { name: "Sorceress", unit_type: "hero", base_cost: 100, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 2, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Level 1 Wizard (Dark Magic), may upgrade to Level 2, Eternal Hatred" },
  { name: "Death Hag", unit_type: "hero", base_cost: 75, min_size: 1, max_size: 1, base_size: "20x20mm / Cauldron of Blood",
    stats: { "M" => 5, "WS" => 6, "BS" => 6, "S" => 4, "T" => 3, "W" => 2, "I" => 7, "A" => 3, "Ld" => 8 },
    special_rules: "Eternal Hatred, Frenzy, Poisoned Attacks, Khainite, may ride Cauldron of Blood" },
  { name: "Assassin", unit_type: "hero", base_cost: 90, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 9, "BS" => 9, "S" => 4, "T" => 3, "W" => 2, "I" => 10, "A" => 3, "Ld" => 8 },
    special_rules: "Hidden, Eternal Hatred, Poisoned Attacks, Killing Blow, Always Strikes First" },

  # Core
  { name: "Dark Elf Warriors", unit_type: "core", base_cost: 60, cost_per_model: 6, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Spear, Light Armour, Shield, Eternal Hatred" },
  { name: "Corsairs", unit_type: "core", base_cost: 90, cost_per_model: 9, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Two Hand Weapons, Sea Dragon Cloak (5+ vs shooting), Eternal Hatred" },
  { name: "Repeater Crossbowmen", unit_type: "core", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Repeater Crossbow (24\", S3, Two shots), Eternal Hatred" },
  { name: "Dark Riders", unit_type: "core", base_cost: 85, cost_per_model: 17, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Spear, Repeater Crossbow, Fast Cavalry, Eternal Hatred, Dark Steed" },

  # Special
  { name: "Witch Elves", unit_type: "special", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 6, "A" => 2, "Ld" => 8 },
    special_rules: "Two Hand Weapons, Frenzy, Poisoned Attacks, Eternal Hatred, 6+ Ward Save" },
  { name: "Har Ganeth Executioners", unit_type: "special", base_cost: 120, cost_per_model: 12, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 4, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 9 },
    special_rules: "Great Weapon, Heavy Armour, Eternal Hatred, Killing Blow" },
  { name: "Cold One Knights", unit_type: "special", base_cost: 140, cost_per_model: 28, min_size: 5, max_size: 12, base_size: "25x50mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 4, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 9 },
    special_rules: "Lance, Heavy Armour, Shield, Cold One, Eternal Hatred, Stupidity, Fear" },
  { name: "Shades", unit_type: "special", base_cost: 80, cost_per_model: 16, min_size: 5, max_size: 15, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 5, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Repeater Crossbow, Two Hand Weapons, Skirmishers, Scouts, Eternal Hatred" },
  { name: "Cold One Chariot", unit_type: "special", base_cost: 100, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 7, "WS" => "-", "BS" => "-", "S" => 5, "T" => 5, "W" => 4, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6+1 Impact Hits, 2 Cold Ones (Fear, Stupidity), 2 Dark Elf Crew" },
  { name: "Reaper Bolt Thrower", unit_type: "special", base_cost: 100, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 6, "T" => 7, "W" => 2, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Bolt Thrower, May fire single bolt (D3 wounds) or 6 shots (S4), 2 Dark Elf Crew" },
  { name: "Harpies", unit_type: "special", base_cost: 55, cost_per_model: 11, min_size: 5, max_size: 15, base_size: "25x25mm",
    stats: { "M" => 5, "WS" => 3, "BS" => 0, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 2, "Ld" => 6 },
    special_rules: "Fly, Unit Strength 1" },

  # Rare
  { name: "Black Guard of Naggarond", unit_type: "rare", base_cost: 150, cost_per_model: 15, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 6, "A" => 1, "Ld" => 9 },
    special_rules: "Halberd, Heavy Armour, Eternal Hatred, Immune to Psychology, Stubborn" },
  { name: "War Hydra", unit_type: "rare", base_cost: 220, min_size: 1, max_size: 1, base_size: "100x50mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 0, "S" => 5, "T" => 5, "W" => 5, "I" => 2, "A" => "D6+2", "Ld" => 6 },
    special_rules: "Terror, Large Target, Regeneration, Breath Weapon (S4 Flaming), 2 Beastmaster Handlers" },
  { name: "Cauldron of Blood", unit_type: "rare", base_cost: 200, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => "-", "T" => 5, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "5+ Ward Save (6\" bubble), Fury of Khaine (grants Killing Blow), Large Target, Death Hag required" },
  { name: "Manticore", unit_type: "rare", base_cost: 150, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 6, "WS" => 5, "BS" => 0, "S" => 5, "T" => 5, "W" => 4, "I" => 5, "A" => 4, "Ld" => 5 },
    special_rules: "Fly, Terror, Large Target, Killing Blow (tail attack)" },
  { name: "Black Dragon", unit_type: "rare", base_cost: 320, min_size: 1, max_size: 1, base_size: "100x150mm",
    stats: { "M" => 6, "WS" => 6, "BS" => 0, "S" => 6, "T" => 6, "W" => 6, "I" => 3, "A" => 5, "Ld" => 8 },
    special_rules: "Fly, Terror, Large Target, Breath Weapon (S4 Toxic), Scaly Skin 3+" }
].freeze

DARK_ELF_SPECIAL_RULES = [
  { name: "Eternal Hatred", category: "rule", description: "Dark Elves Hate all enemies, not just specific foes. Re-roll To Hit in first round of any combat." },
  { name: "Dark Magic", category: "rule", description: "Dark Elf sorceresses use the Lore of Dark Magic. Powerful but potentially dangerous spells fueled by suffering." },
  { name: "Sea Dragon Cloak", category: "armour", description: "5+ Armour Save against missile attacks. Combined with Light Armour for 5+/5+ vs shooting." },
  { name: "Dark Steed", category: "equipment", description: "Dark Elf cavalry mount. M9, WS3, S3, T3, W1, I4, A1, Ld5. Fast and vicious." },
  { name: "Cold One", category: "equipment", description: "Reptilian mount. M7, WS3, S4, T4, W1, I2, A2, Ld3. Causes Fear. Stupidity." },
  { name: "Dark Pegasus", category: "equipment", description: "Flying mount. M8, WS3, S4, T4, W2, I4, A2, Ld6. Fly." },
  { name: "Khainite", category: "rule", description: "Follower of Khaine, God of Murder. May take items from the Khainite Assassin list." },
  { name: "Fury of Khaine", category: "rule", description: "Cauldron of Blood grants Killing Blow to all friendly Dark Elf units within 6\"." },
  { name: "Beastmaster", category: "rule", description: "Handler for War Hydra. If handlers die, Hydra must test or become Uncontrolled." },
  { name: "Repeater Crossbow", category: "weapon", description: "Range 24\", S3, Two shots per model. May move and shoot at -1 To Hit." }
].freeze

def seed_dark_elves
  ArmySeeder.seed_army("Dark Elves", DARK_ELVES_UNITS)
  
  DARK_ELF_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

