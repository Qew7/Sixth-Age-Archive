# frozen_string_literal: true

# Tomb Kings - Ravening Hordes
TOMB_KINGS_UNITS = [
  # Lords
  { name: "Tomb King", unit_type: "lord", base_cost: 180, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 6, "BS" => 3, "S" => 5, "T" => 5, "W" => 4, "I" => 3, "A" => 4, "Ld" => 10 },
    special_rules: "Undead, My Will Be Done, Flammable, may ride Skeleton Chariot or Warsphinx" },
  { name: "High Liche Priest", unit_type: "lord", base_cost: 175, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 3, "I" => 2, "A" => 1, "Ld" => 8 },
    special_rules: "Level 3 Wizard (Lore of Nehekhara), may upgrade to Level 4, Undead, Hierophant, Flammable" },

  # Heroes
  { name: "Tomb Prince", unit_type: "hero", base_cost: 90, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 5, "BS" => 3, "S" => 4, "T" => 5, "W" => 3, "I" => 3, "A" => 3, "Ld" => 9 },
    special_rules: "Undead, My Will Be Done, Flammable, may ride Skeleton Chariot" },
  { name: "Liche Priest", unit_type: "hero", base_cost: 70, min_size: 1, max_size: 1, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 2, "A" => 1, "Ld" => 7 },
    special_rules: "Level 1 Wizard (Lore of Nehekhara), may upgrade to Level 2, Undead, Flammable" },
  { name: "Tomb Herald", unit_type: "hero", base_cost: 60, min_size: 1, max_size: 1, base_size: "20x20mm / 25x50mm mounted",
    stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 3, "A" => 2, "Ld" => 8 },
    special_rules: "Undead, Flammable, may carry Battle Standard, Entombed with unit (joins Skeleton unit)" },

  # Core
  { name: "Skeleton Warriors", unit_type: "core", base_cost: 40, cost_per_model: 4, min_size: 10, max_size: 40, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 3 },
    special_rules: "Hand Weapon, Light Armour, Shield, Undead, Flammable" },
  { name: "Skeleton Archers", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 3 },
    special_rules: "Bow, Hand Weapon, Undead, Flammable, Arrows of Asaph" },
  { name: "Skeleton Horsemen", unit_type: "core", base_cost: 70, cost_per_model: 14, min_size: 5, max_size: 15, base_size: "25x50mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 2, "A" => 1, "Ld" => 3 },
    special_rules: "Spear, Light Armour, Shield, Skeleton Horse, Undead, Flammable, Fast Cavalry" },
  { name: "Skeleton Chariots", unit_type: "core", base_cost: 85, cost_per_model: 85, min_size: 1, max_size: 6, base_size: "50x100mm",
    stats: { "M" => 8, "WS" => "-", "BS" => "-", "S" => 4, "T" => 4, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Chariot, D6 Impact Hits, 2 Skeleton Crew with Bow and Spear, 2 Skeleton Horses, Undead, Flammable" },

  # Special
  { name: "Tomb Guard", unit_type: "special", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 4, "T" => 4, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
    special_rules: "Halberd, Light Armour, Shield, Killing Blow, Undead, Flammable" },
  { name: "Ushabti", unit_type: "special", base_cost: 195, cost_per_model: 65, min_size: 3, max_size: 12, base_size: "40x40mm",
    stats: { "M" => 5, "WS" => 4, "BS" => 2, "S" => 6, "T" => 4, "W" => 3, "I" => 3, "A" => 3, "Ld" => 8 },
    special_rules: "Great Weapon, Construct, Undead, Flammable" },
  { name: "Carrion", unit_type: "special", base_cost: 72, cost_per_model: 24, min_size: 3, max_size: 9, base_size: "40x40mm",
    stats: { "M" => 2, "WS" => 3, "BS" => 0, "S" => 4, "T" => 4, "W" => 2, "I" => 3, "A" => 2, "Ld" => 4 },
    special_rules: "Fly, Undead, Flammable" },
  { name: "Tomb Scorpion", unit_type: "special", base_cost: 85, min_size: 1, max_size: 1, base_size: "60mm round",
    stats: { "M" => 7, "WS" => 4, "BS" => 0, "S" => 5, "T" => 5, "W" => 3, "I" => 3, "A" => 4, "Ld" => 8 },
    special_rules: "Entombed Beneath the Sands, Killing Blow, Poisoned Attacks, Fear, Construct, Undead, Flammable" },
  { name: "Sepulchral Stalkers", unit_type: "special", base_cost: 165, cost_per_model: 55, min_size: 3, max_size: 12, base_size: "40x40mm",
    stats: { "M" => 7, "WS" => 3, "BS" => "-", "S" => 4, "T" => 4, "W" => 2, "I" => 3, "A" => 2, "Ld" => 8 },
    special_rules: "Entombed Beneath the Sands, Transmogrifying Gaze, Construct, Undead, Flammable" },
  { name: "Tomb Swarm", unit_type: "special", base_cost: 45, cost_per_model: 45, min_size: 1, max_size: 4, base_size: "40x40mm",
    stats: { "M" => 4, "WS" => 3, "BS" => 0, "S" => 2, "T" => 2, "W" => 5, "I" => 1, "A" => 5, "Ld" => 10 },
    special_rules: "Swarm, Poisoned Attacks, Entombed Beneath the Sands, Undead, Flammable" },
  { name: "Screaming Skull Catapult", unit_type: "special", base_cost: 90, min_size: 1, max_size: 1, base_size: "War Machine base",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 3, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "War Machine, Stone Thrower, Screaming Skulls (causes Panic), 3 Skeleton Crew, Undead, Flammable" },

  # Rare
  { name: "Necropolis Knights", unit_type: "rare", base_cost: 165, cost_per_model: 55, min_size: 3, max_size: 9, base_size: "60mm round",
    stats: { "M" => 7, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 3, "I" => 2, "A" => 2, "Ld" => 8 },
    special_rules: "Killing Blow, Poisoned Attacks (Necroserpent), Fear, Construct, Undead, Flammable" },
  { name: "Warsphinx", unit_type: "rare", base_cost: 210, min_size: 1, max_size: 1, base_size: "100x50mm",
    stats: { "M" => 6, "WS" => 4, "BS" => "-", "S" => 5, "T" => 8, "W" => 5, "I" => 1, "A" => 4, "Ld" => 8 },
    special_rules: "Terror, Large Target, Thundercrush, Construct, Undead, Flammable, 4 Skeleton Crew" },
  { name: "Necrosphinx", unit_type: "rare", base_cost: 225, min_size: 1, max_size: 1, base_size: "100x50mm",
    stats: { "M" => 6, "WS" => 5, "BS" => "-", "S" => 6, "T" => 8, "W" => 5, "I" => 1, "A" => 5, "Ld" => 8 },
    special_rules: "Fly, Terror, Large Target, Decapitating Strike (D3 wounds vs Large Targets), Construct, Undead, Flammable" },
  { name: "Casket of Souls", unit_type: "rare", base_cost: 135, min_size: 1, max_size: 1, base_size: "60x100mm",
    stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => "-", "T" => 5, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Light of Death (Bound Spell, S3 hits to all enemy units), 2 Skeleton Crew, Undead, Flammable" },
  { name: "Bone Giant", unit_type: "rare", base_cost: 175, min_size: 1, max_size: 1, base_size: "50x75mm",
    stats: { "M" => 6, "WS" => 3, "BS" => "-", "S" => 6, "T" => 5, "W" => 5, "I" => 3, "A" => 3, "Ld" => 8 },
    special_rules: "Terror, Large Target, Unstoppable Assault, Construct, Undead, Flammable" }
].freeze

TOMB_KINGS_SPECIAL_RULES = [
  { name: "My Will Be Done", category: "rule", description: "Unit joined by Tomb King/Prince uses the character's WS for all attacks." },
  { name: "Hierophant", category: "rule", description: "General's Leadership used for Undead. If Hierophant dies, all Undead units take D6 wounds." },
  { name: "Lore of Nehekhara", category: "rule", description: "Tomb Kings specific magic. Signature spell: Righteous Smiting (extra attack and Always Strikes First)." },
  { name: "Arrows of Asaph", category: "rule", description: "Skeleton Archers ignore penalties for multiple shots, stand and shoot, and may fire in any direction." },
  { name: "Entombed Beneath the Sands", category: "rule", description: "Unit deploys as Ambusher from any table edge, including enemy's, from Turn 2 onwards on 3+." },
  { name: "Construct", category: "rule", description: "May not march unless Righteous Smiting is cast on them. Immune to Killing Blow and Poisoned Attacks." },
  { name: "Transmogrifying Gaze", category: "rule", description: "Shooting attack: Each model rolls Artillery dice vs one unit. Number of hits = target's I - dice result. S4." },
  { name: "Screaming Skulls", category: "rule", description: "Unit hit must pass Panic test regardless of casualties. If 5+ models hit, test at -1 Ld." },
  { name: "Thundercrush", category: "rule", description: "Warsphinx may forgo normal attacks to make Thundercrush: One model in base contact takes S10 hit." },
  { name: "Decapitating Strike", category: "rule", description: "Necrosphinx attacks against Large Targets cause D3 wounds instead of 1." },
  { name: "Light of Death", category: "rule", description: "Casket bound spell: All enemy units within 2D6\" x 3 suffer D6 S3 hits. Can be dispelled." },
  { name: "Unstoppable Assault", category: "rule", description: "Bone Giant may make Stomp attacks (D6 S6 hits against non-Large Target infantry/cavalry)." }
].freeze

def seed_tomb_kings
  ArmySeeder.seed_army("Tomb Kings", TOMB_KINGS_UNITS)
  
  TOMB_KINGS_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

