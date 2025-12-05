# frozen_string_literal: true

# Ogre Kingdoms - Ravening Hordes / Army Book 2004
OGRE_KINGDOMS_UNITS = [
  # Lords
  { name: "Tyrant", unit_type: "lord", base_cost: 190, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 6, "BS" => 3, "S" => 5, "T" => 5, "W" => 5, "I" => 4, "A" => 5, "Ld" => 9 },
    special_rules: "Fear, Impact Hits (1), Big Names, may ride Mournfang or Stonehorn" },
  { name: "Slaughtermaster", unit_type: "lord", base_cost: 225, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 2, "S" => 5, "T" => 5, "W" => 5, "I" => 3, "A" => 4, "Ld" => 8 },
    special_rules: "Level 3 Wizard (Gut Magic), may upgrade to Level 4, Fear, Impact Hits (1)" },

  # Heroes
  { name: "Bruiser", unit_type: "hero", base_cost: 105, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 5, "BS" => 3, "S" => 5, "T" => 5, "W" => 4, "I" => 3, "A" => 4, "Ld" => 8 },
    special_rules: "Fear, Impact Hits (1), Big Names, may carry Battle Standard" },
  { name: "Butcher", unit_type: "hero", base_cost: 130, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 2, "S" => 4, "T" => 5, "W" => 4, "I" => 2, "A" => 3, "Ld" => 7 },
    special_rules: "Level 1 Wizard (Gut Magic), may upgrade to Level 2, Fear, Impact Hits (1)" },
  { name: "Hunter", unit_type: "hero", base_cost: 135, min_size: 1, max_size: 1, base_size: "40x40mm / 50x100mm on Stonehorn",
    stats: { "M" => 6, "WS" => 5, "BS" => 4, "S" => 5, "T" => 5, "W" => 4, "I" => 4, "A" => 4, "Ld" => 8 },
    special_rules: "Fear, Impact Hits (1), Harpoon Launcher, Sabretusks, Scouts" },
  { name: "Firebelly", unit_type: "hero", base_cost: 150, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 2, "S" => 4, "T" => 5, "W" => 4, "I" => 2, "A" => 3, "Ld" => 7 },
    special_rules: "Level 1 Wizard (Lore of Fire), Fear, Impact Hits (1), Fire Breath, 2+ Ward vs Fire" },

  # Core
  { name: "Ogre Bulls", unit_type: "core", base_cost: 105, cost_per_model: 35, min_size: 3, max_size: 12, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 2, "S" => 4, "T" => 4, "W" => 3, "I" => 2, "A" => 3, "Ld" => 7 },
    special_rules: "Hand Weapon or Two Hand Weapons, Fear, Impact Hits (1), Ogre Charge" },
  { name: "Ironguts", unit_type: "core", base_cost: 129, cost_per_model: 43, min_size: 3, max_size: 12, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 2, "S" => 4, "T" => 4, "W" => 3, "I" => 2, "A" => 3, "Ld" => 8 },
    special_rules: "Great Weapon, Heavy Armour, Fear, Impact Hits (1), Ogre Charge" },
  { name: "Gnoblars", unit_type: "core", base_cost: 20, cost_per_model: 2, min_size: 20, max_size: 50, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 2, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 5 },
    special_rules: "Sharp Stuff (throwing weapons), Bicker, Beneath Contempt" },
  { name: "Gnoblar Trappers", unit_type: "core", base_cost: 24, cost_per_model: 4, min_size: 6, max_size: 18, base_size: "20x20mm",
    stats: { "M" => 4, "WS" => 2, "BS" => 3, "S" => 2, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 5 },
    special_rules: "Sharp Stuff, Scouts, Skirmishers, Traps" },

  # Special
  { name: "Leadbelchers", unit_type: "special", base_cost: 129, cost_per_model: 43, min_size: 3, max_size: 9, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 3, "BS" => 3, "S" => 4, "T" => 4, "W" => 3, "I" => 2, "A" => 3, "Ld" => 7 },
    special_rules: "Leadbelcher Gun (D6 S4 Armour Piercing shots, 12\"), Fear, Impact Hits (1)" },
  { name: "Maneaters", unit_type: "special", base_cost: 150, cost_per_model: 50, min_size: 3, max_size: 9, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 4, "S" => 5, "T" => 4, "W" => 3, "I" => 3, "A" => 4, "Ld" => 8 },
    special_rules: "Heavy Armour, Fear, Impact Hits (1), Immune to Psychology, choose 2 Special Rules" },
  { name: "Mournfang Cavalry", unit_type: "special", base_cost: 140, cost_per_model: 70, min_size: 2, max_size: 6, base_size: "50x75mm",
    stats: { "M" => 8, "WS" => 3, "BS" => 2, "S" => 4, "T" => 4, "W" => 3, "I" => 2, "A" => 3, "Ld" => 7 },
    special_rules: "Great Weapon or Ironfist, Heavy Armour, Mournfang (Fear, D3 Impact Hits), Ogre Charge" },
  { name: "Sabretusk Pack", unit_type: "special", base_cost: 21, cost_per_model: 21, min_size: 1, max_size: 10, base_size: "50x50mm",
    stats: { "M" => 8, "WS" => 3, "BS" => 0, "S" => 4, "T" => 3, "W" => 2, "I" => 4, "A" => 3, "Ld" => 4 },
    special_rules: "Swiftstride" },
  { name: "Scraplauncher", unit_type: "special", base_cost: 130, min_size: 1, max_size: 1, base_size: "Chariot base",
    stats: { "M" => 6, "WS" => "-", "BS" => 3, "S" => "-", "T" => 5, "W" => 5, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Stone Thrower (S3, Killing Blow on 6 To Wound), Rhinox-pulled, Gnoblar Crew, Fear" },
  { name: "Gorger", unit_type: "special", base_cost: 90, min_size: 1, max_size: 1, base_size: "40x40mm",
    stats: { "M" => 6, "WS" => 4, "BS" => 1, "S" => 5, "T" => 5, "W" => 4, "I" => 3, "A" => 4, "Ld" => "-" },
    special_rules: "Ambushers, Killing Blow, Fear, Unbreakable, Immune to Psychology" },

  # Rare
  { name: "Stonehorn", unit_type: "rare", base_cost: 250, min_size: 1, max_size: 1, base_size: "100x50mm",
    stats: { "M" => 7, "WS" => 3, "BS" => "-", "S" => 6, "T" => 6, "W" => 6, "I" => 2, "A" => 5, "Ld" => 6 },
    special_rules: "Terror, Large Target, D3+1 Impact Hits, Stone Skeleton (1+ vs non-magical), may have Harpoon Launcher" },
  { name: "Thundertusk", unit_type: "rare", base_cost: 250, min_size: 1, max_size: 1, base_size: "100x50mm",
    stats: { "M" => 6, "WS" => 3, "BS" => "-", "S" => 5, "T" => 5, "W" => 6, "I" => 2, "A" => 4, "Ld" => 5 },
    special_rules: "Terror, Large Target, D3 Impact Hits, Numbing Chill (ASL to enemies within 6\"), Sphere of Frost Wreathed Ice" },
  { name: "Ironblaster", unit_type: "rare", base_cost: 170, min_size: 1, max_size: 1, base_size: "Chariot base",
    stats: { "M" => 6, "WS" => "-", "BS" => 3, "S" => "-", "T" => 6, "W" => 6, "I" => "-", "A" => "-", "Ld" => "-" },
    special_rules: "Cannon (Range 36\", S10, D6 wounds), Rhinox-pulled, D3 Impact Hits, Large Target, Fear" },
  { name: "Giant", unit_type: "rare", base_cost: 205, min_size: 1, max_size: 1, base_size: "50x75mm",
    stats: { "M" => 6, "WS" => 3, "BS" => "-", "S" => 6, "T" => 5, "W" => 6, "I" => 3, "A" => "Special", "Ld" => 10 },
    special_rules: "Terror, Stubborn, Large Target, Fall Over, Giant Special Attacks" }
].freeze

OGRE_KINGDOMS_SPECIAL_RULES = [
  { name: "Impact Hits (1)", category: "rule", description: "When charging, each Ogre inflicts 1 automatic S4 hit on the charged unit. Cavalry mounts may add additional impacts." },
  { name: "Ogre Charge", category: "rule", description: "Ogres add +1 to their Impact Hits for each rank after the first." },
  { name: "Gut Magic", category: "rule", description: "Butcher-specific lore. Spells are cast by eating, and miscast effects can be absorbed by nearby Ogres." },
  { name: "Big Names", category: "rule", description: "Tyrants and Bruisers may take Big Names that grant special abilities like Stubborn, extra attacks, or stat bonuses." },
  { name: "Bicker", category: "rule", description: "At start of turn, Gnoblars must pass Ld test or spend turn squabbling (no movement or shooting)." },
  { name: "Beneath Contempt", category: "rule", description: "Gnoblars do not cause Panic in Ogre units. Ogres may shoot into combat containing only Gnoblars." },
  { name: "Sharp Stuff", category: "weapon", description: "Gnoblar throwing weapons. Range 8\", S2. May stand and shoot." },
  { name: "Traps", category: "rule", description: "Trappers may place markers before deployment. Enemy units crossing markers suffer D6 S4 hits." },
  { name: "Leadbelcher Gun", category: "weapon", description: "Range 12\", S4, Armour Piercing, D6 shots. Must reload if Misfire rolled." },
  { name: "Ironfist", category: "equipment", description: "Ogre shield. May be used as additional hand weapon (+1 A) or as shield (6+ Armour Save)." },
  { name: "Harpoon Launcher", category: "weapon", description: "Range 36\", S5, D3 wounds. If target survives and fails Ld test, dragged D6\" towards shooter." },
  { name: "Sabretusks", category: "equipment", description: "Hunter may bring up to 2 Sabretusks as hunting cats. They deploy with him and fight independently." },
  { name: "Fire Breath", category: "rule", description: "Firebelly may use breath weapon once per game. Flame template, S4, Flaming." },
  { name: "Numbing Chill", category: "rule", description: "All enemy units within 6\" of Thundertusk suffer Always Strikes Last." },
  { name: "Stone Skeleton", category: "rule", description: "Stonehorn has 1+ armour save against non-magical attacks." },
  { name: "Mournfang", category: "equipment", description: "Large cat mount. M8, WS3, S5, T4, W3, I2, A3. Fear. D3 Impact Hits." },
  { name: "Rhinox", category: "equipment", description: "Rhinox beast pulls war machines. T5, W4. D3 Impact Hits. Adds to machine toughness." }
].freeze

def seed_ogre_kingdoms
  ArmySeeder.seed_army("Ogre Kingdoms", OGRE_KINGDOMS_UNITS)
  
  OGRE_KINGDOMS_SPECIAL_RULES.each do |rule_data|
    rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
    rule.description = rule_data[:description]
    rule.category = rule_data[:category]
    rule.save!
  end
end

