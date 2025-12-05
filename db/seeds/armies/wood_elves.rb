# frozen_string_literal: true

# Wood Elves - Ravening Hordes / Army Book 2005
WOOD_ELVES_UNITS = [
  # Lords
  { name: "Highborn", unit_type: "lord", base_cost: 145, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 5, "WS" => 8, "BS" => 7, "S" => 4, "T" => 3, "W" => 3, "I" => 9, "A" => 5, "Ld" => 10 },
    special_rules: "Asrai Archery, may ride Elven Steed, Great Eagle, or Forest Dragon" },
  { name: "Spellweaver", unit_type: "lord", base_cost: 225, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 3, "I" => 5, "A" => 1, "Ld" => 9 },
    special_rules: "Level 3 Wizard (Lore of Athel Loren), may upgrade to Level 4" },
  { name: "Treeman Ancient", unit_type: "lord", base_cost: 285, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 5, "WS" => 6, "BS" => 6, "S" => 6, "T" => 6, "W" => 6, "I" => 2, "A" => 5, "Ld" => 10 },
    special_rules: "Level 2 Wizard (Lore of Athel Loren), Terror, Large Target, Stubborn, Flammable, Tree Singing" },

  # Heroes
  { name: "Noble", unit_type: "hero", base_cost: 75, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 5, "WS" => 6, "BS" => 6, "S" => 4, "T" => 3, "W" => 2, "I" => 7, "A" => 3, "Ld" => 9 },
    special_rules: "Asrai Archery, may carry Battle Standard, may ride Elven Steed or Great Eagle" },
  { name: "Spellsinger", unit_type: "hero", base_cost: 90, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 2, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Level 1 Wizard (Lore of Athel Loren), may upgrade to Level 2" },
  { name: "Branchwraith", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 4, "T" => 4, "W" => 2, "I" => 6, "A" => 3, "Ld" => 8 },
    special_rules: "Level 1 Wizard (Lore of Athel Loren), Forest Spirit, Fear, 5+ Ward Save" },

  # Core
  { name: "Glade Guard", unit_type: "core", base_cost: 120, cost_per_model: 12, min_size: 10, max_size: 20, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Longbow, Asrai Archery" },
  { name: "Glade Riders", unit_type: "core", base_cost: 120, cost_per_model: 24, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Spear, Longbow, Fast Cavalry, Asrai Archery" },
  { name: "Eternal Guard", unit_type: "core", base_cost: 120, cost_per_model: 12, min_size: 10, max_size: 25, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 9 },
    special_rules: "Spear, Light Armour, Shield, Stubborn (in forests)" },
  { name: "Dryads", unit_type: "core", base_cost: 96, cost_per_model: 12, min_size: 8, max_size: 16, base_size: "25x25mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 4, "T" => 4, "W" => 1, "I" => 6, "A" => 2, "Ld" => 8 },
    special_rules: "Forest Spirit, Fear, 5+ Ward Save, Immune to Psychology, Skirmishers" },

  # Special
  { name: "Wardancers", unit_type: "special", base_cost: 90, cost_per_model: 18, min_size: 5, max_size: 15, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 6, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 6, "A" => 2, "Ld" => 8 },
    special_rules: "Two Hand Weapons, Wardancer Dances, Skirmishers, Immune to Psychology" },
  { name: "Wild Riders", unit_type: "special", base_cost: 130, cost_per_model: 26, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 4, "S" => 4, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 9 },
    special_rules: "Spear, Light Armour, Elven Steed, Frenzy, Fear, Fast Cavalry" },
  { name: "Warhawk Riders", unit_type: "special", base_cost: 120, cost_per_model: 40, min_size: 3, max_size: 9, base_size: "40x40mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 2, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Spear, Warhawk mount (Fly), Killing Blow (Warhawk)" },
  { name: "Waywatchers", unit_type: "special", base_cost: 120, cost_per_model: 24, min_size: 5, max_size: 10, base_size: "20x20mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 5, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
    special_rules: "Two Hand Weapons, Longbow, Scouts, Skirmishers, Lethal Shot (Killing Blow with shooting)" },
  { name: "Treekin", unit_type: "special", base_cost: 195, cost_per_model: 65, min_size: 3, max_size: 9, base_size: "40x40mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 5, "T" => 5, "W" => 3, "I" => 3, "A" => 3, "Ld" => 8 },
    special_rules: "Forest Spirit, Fear, 5+ Ward Save, Flammable, Stubborn (in forests)" },
  { name: "Great Eagles", unit_type: "special", base_cost: 50, cost_per_model: 50, min_size: 1, max_size: 3, base_size: "50x50mm",
    stats: { "M" => 2, "WS" => 5, "BS" => 0, "S" => 4, "T" => 4, "W" => 3, "I" => 4, "A" => 2, "Ld" => 8 },
    special_rules: "Fly, Large Target" },

  # Rare
  { name: "Treeman", unit_type: "rare", base_cost: 260, min_size: 1, max_size: 1, base_size: "50x50mm",
    stats: { "M" => 5, "WS" => 5, "BS" => 5, "S" => 6, "T" => 6, "W" => 5, "I" => 2, "A" => 4, "Ld" => 9 },
    special_rules: "Forest Spirit, Terror, Large Target, Stubborn, Flammable, Tree Singing, Strangleroots" }
].freeze

WOOD_ELF_SPECIAL_RULES = [
  { name: "Asrai Archery", category: "rule", description: "Wood Elf longbows have +6\" range (30\" total). May move and shoot with no penalty." },
  { name: "Lore of Athel Loren", category: "rule", description: "Wood Elf specific magic. Includes Tree Singing and spells that manipulate forests." },
  { name: "Forest Spirit", category: "rule", description: "5+ Ward Save. Immune to Psychology. May move through forests without penalty. Flammable (optional in some editions)." },
  { name: "Wardancer Dances", category: "rule", description: "Choose one per combat round: +1 Attack, +1 S, Killing Blow, or 4+ Ward Save." },
  { name: "Tree Singing", category: "rule", description: "May move forests D6\" per turn. Enemy units in forests suffer D6 S4 hits at end of Magic phase." },
  { name: "Strangleroots", category: "rule", description: "Treeman shooting attack: 12\" range, D6 S5 hits." },
  { name: "Lethal Shot", category: "rule", description: "Waywatchers have Killing Blow on shooting attacks that roll 6 To Hit." },
  { name: "Warhawk", category: "equipment", description: "Flying mount. M2, WS4, S4, T4, W2, I4, A2, Ld7. Fly. Killing Blow." },
  { name: "Forest Dragon", category: "equipment", description: "Monstrous mount. Terror, Fly, Breath Weapon (S4 Poison), Large Target, Scaly Skin 3+." }
].freeze

def seed_wood_elves
  ArmySeeder.seed_army("Wood Elves", WOOD_ELVES_UNITS)
  
  WOOD_ELF_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

