# frozen_string_literal: true

# Vampire Counts - Ravening Hordes
VAMPIRE_COUNTS_UNITS = [
  # Lords
  { name: "Vampire Lord", unit_type: "lord", base_cost: 220, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 6, "WS" => 7, "BS" => 5, "S" => 5, "T" => 5, "W" => 3, "I" => 7, "A" => 4, "Ld" => 10 },
    special_rules: "Undead, Vampire, Level 2 Wizard (Necromancy), may be upgraded to Level 3/4, may ride Nightmare, Hellsteed, or Zombie Dragon" },
  { name: "Master Necromancer", unit_type: "lord", base_cost: 160, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 3, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Level 3 Wizard (Necromancy), may be upgraded to Level 4" },
  { name: "Strigoi Ghoul King", unit_type: "lord", base_cost: 145, min_size: 1, max_size: 1, base_size: "25x25mm",
    stats: { "M" => 6, "WS" => 6, "BS" => 3, "S" => 5, "T" => 5, "W" => 3, "I" => 5, "A" => 5, "Ld" => 7 },
    special_rules: "Undead, Vampire, Regeneration, Hatred, Infinite Hatred, may not ride mounts" },

  # Heroes
  { name: "Vampire", unit_type: "hero", base_cost: 110, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 6, "WS" => 6, "BS" => 4, "S" => 5, "T" => 4, "W" => 2, "I" => 6, "A" => 3, "Ld" => 8 },
    special_rules: "Undead, Vampire, Level 1 Wizard (Necromancy), may be upgraded to Level 2" },
  { name: "Necromancer", unit_type: "hero", base_cost: 55, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 7 },
    special_rules: "Level 1 Wizard (Necromancy), may be upgraded to Level 2" },
  { name: "Wight King", unit_type: "hero", base_cost: 75, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 5, "T" => 5, "W" => 2, "I" => 3, "A" => 3, "Ld" => 9 },
    special_rules: "Undead, Killing Blow, Heavy Armour, may carry Battle Standard" },

  # Core
  { name: "Skeleton Warriors", unit_type: "core", base_cost: 40, cost_per_model: 4, min_size: 10, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 3 },
    special_rules: "Undead, Hand Weapon, Light Armour, Shield" },
  { name: "Zombies", unit_type: "core", base_cost: 30, cost_per_model: 3, min_size: 10, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 1, "BS" => 0, "S" => 2, "T" => 2, "W" => 1, "I" => 1, "A" => 1, "Ld" => 2 },
    special_rules: "Undead, Always Strikes Last, may be raised above starting size" },
  { name: "Crypt Ghouls", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 0, "S" => 3, "T" => 4, "W" => 1, "I" => 3, "A" => 2, "Ld" => 5 },
    special_rules: "Poisoned Attacks, Skirmishers, may not be Raised" },
  { name: "Dire Wolves", unit_type: "core", base_cost: 50, cost_per_model: 10, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 9, "WS" => 3, "BS" => 0, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 3 },
    special_rules: "Undead, Fear, Fast Cavalry" },
  { name: "Bat Swarms", unit_type: "core", base_cost: 60, cost_per_model: 60, min_size: 1, max_size: 4, base_size: "40x40mm",
    stats: { "M" => 1, "WS" => 3, "BS" => 0, "S" => 2, "T" => 2, "W" => 5, "I" => 1, "A" => 5, "Ld" => 3 },
    special_rules: "Undead, Fly, Swarm, Cloud of Horror" },

  # Special
  { name: "Grave Guard", unit_type: "special", base_cost: 110, cost_per_model: 11, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Undead, Killing Blow, Heavy Armour, Shield, may take Great Weapons" },
  { name: "Black Knights", unit_type: "special", base_cost: 120, cost_per_model: 24, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Undead, Killing Blow, Heavy Armour, Shield, Lance, Skeletal Steed, Ethereal (optional)" },
  { name: "Spirit Hosts", unit_type: "special", base_cost: 65, cost_per_model: 65, min_size: 1, max_size: 4, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 0, "S" => 3, "T" => 3, "W" => 3, "I" => 1, "A" => 3, "Ld" => 4 },
    special_rules: "Undead, Ethereal, Swarm" },
  { name: "Corpse Cart", unit_type: "special", base_cost: 75, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 0, "S" => 3, "T" => 4, "W" => 4, "I" => 1, "A" => 2, "Ld" => 4 },
    special_rules: "Undead, Vigour Mortis, may have Balefire or Unholy Lodestone" },
  { name: "Fell Bats", unit_type: "special", base_cost: 80, cost_per_model: 20, min_size: 4, max_size: 8, base_size: "40x40mm",
    stats: { "M" => 1, "WS" => 3, "BS" => 0, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 2, "Ld" => 3 },
    special_rules: "Undead, Fly, Unit Strength 2 each" },

  # Rare
  { name: "Varghulf", unit_type: "rare", base_cost: 175, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 8, "WS" => 5, "BS" => 0, "S" => 5, "T" => 5, "W" => 4, "I" => 4, "A" => 4, "Ld" => 4 },
    special_rules: "Undead, Vampire, Terror, Regeneration, Hatred, Bestial Fury" },
  { name: "Blood Knights", unit_type: "rare", base_cost: 250, cost_per_model: 50, min_size: 5, max_size: 10, base_size: "25x50mm",
    stats: { "M" => 6, "WS" => 5, "BS" => 3, "S" => 5, "T" => 4, "W" => 1, "I" => 5, "A" => 2, "Ld" => 7 },
    special_rules: "Undead, Vampire, Frenzy, Lance, Heavy Armour, Shield, Barded Nightmare" },
  { name: "Black Coach", unit_type: "rare", base_cost: 200, min_size: 1, max_size: 1, base_size: "50x100mm",
    stats: { "M" => 8, "WS" => "-", "BS" => "-", "S" => 5, "T" => 6, "W" => 4, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Undead, Large Target, Ethereal, Terror, D6 Impact Hits, Evocation of Death" },
  { name: "Cairn Wraiths", unit_type: "rare", base_cost: 100, cost_per_model: 50, min_size: 2, max_size: 8, base_size: "20x20mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 0, "S" => 3, "T" => 3, "W" => 2, "I" => 2, "A" => 2, "Ld" => 5 },
    special_rules: "Undead, Ethereal, Terror, Great Weapon" },
  { name: "Zombie Dragon", unit_type: "rare", base_cost: 200, min_size: 1, max_size: 1, base_size: "100x150mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 0, "S" => 6, "T" => 6, "W" => 6, "I" => 2, "A" => 5, "Ld" => 4 },
    special_rules: "Undead, Fly, Terror, Large Target, Pestilential Breath" }
].freeze

VAMPIRE_COUNTS_SPECIAL_RULES = [
  { name: "Undead", category: "rule", description: "Immune to Psychology. Cause Fear. Never flee, auto-destroyed if lose combat by more than unit strength. Must always march towards enemies." },
  { name: "Vampire", category: "rule", description: "Undead but may use General's Leadership. If General is slain, all non-vampire undead take Ld test or crumble." },
  { name: "Necromancy", category: "rule", description: "Lore of Vampires/Necromancy. May raise undead units and heal them. Signature spell: Invocation of Nehek." },
  { name: "Killing Blow", category: "rule", description: "To Wound roll of 6 automatically kills model (no save except Ward). Does not work vs models with 3+ Wounds." },
  { name: "Infinite Hatred", category: "rule", description: "May re-roll failed To Hit rolls every round, not just the first." },
  { name: "Ethereal", category: "rule", description: "Cannot be harmed by non-magical attacks. May move through terrain and units. May not be joined by non-Ethereal characters." },
  { name: "Nightmare", category: "equipment", description: "Undead horse mount. M8, WS2, S3, T3, W1, I2, A1, Ld3. Fear." },
  { name: "Hellsteed", category: "equipment", description: "Flying undead steed. M8, WS3, S4, T4, W2, I3, A2, Ld4. Fly, Fear." },
  { name: "Skeletal Steed", category: "equipment", description: "Skeleton horse. M8, WS2, S3, T3, W1, I2, A0, Ld3. Undead." },
  { name: "Cloud of Horror", category: "rule", description: "Bat Swarm causes -1 To Hit penalty to enemies in base contact." },
  { name: "Vigour Mortis", category: "rule", description: "Corpse Cart grants Always Strikes First to undead within 6\" on the turn Invocation is cast with 10+ dice." },
  { name: "Balefire", category: "equipment", description: "Enemy wizards within 24\" suffer -1 to casting attempts." },
  { name: "Unholy Lodestone", category: "equipment", description: "Adds +1 to casting attempts for Necromancy spells within 6\"." },
  { name: "Evocation of Death", category: "rule", description: "Black Coach gains abilities as Power Dice are generated nearby: Ethereal, Ward Save, Fly, etc." },
  { name: "Bestial Fury", category: "rule", description: "Varghulf gains +D3 Attacks when it charges." },
  { name: "Pestilential Breath", category: "rule", description: "Zombie Dragon breath weapon: All models under template must pass T test or suffer wound. No armour save." }
].freeze

def seed_vampire_counts
  ArmySeeder.seed_army("Vampire Counts", VAMPIRE_COUNTS_UNITS)
  
  VAMPIRE_COUNTS_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

