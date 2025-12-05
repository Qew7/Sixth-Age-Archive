# frozen_string_literal: true

puts "Seeding database..."

# Game Formats
puts "Creating game formats..."
formats = [
  # Warband formats (General's Compendium)
  { 
    name: "Small Warband", 
    points_limit: 199, 
    restrictions: { 
      "max_lords_percent" => 0,
      "max_heroes_percent" => 100,
      "min_core_percent" => 0,
      "min_core_units" => 2,
      "max_total_units" => 8,
      "max_commander_points" => 75,
      "allow_lords" => false,
      "allow_special" => false,
      "allow_rare" => false,
      "allow_war_machines" => false,
      "allow_chariots" => false,
      "allow_flyers" => false,
      "allow_magic_items" => false,
      "warband_unit_sizes" => true,
      "special_rules" => [
        "Commander must be Hero (≤75 pts) or Unit Champion",
        "Unit Champion commander must stay with unit",
        "Minimum unit sizes reduced (see rules)"
      ]
    } 
  },
  { 
    name: "Large Warband", 
    points_limit: 500, 
    restrictions: { 
      "max_lords_percent" => 0,
      "max_heroes_percent" => 100,
      "min_core_percent" => 0,
      "min_core_units" => 2,
      "max_total_units" => 10,
      "max_hero_points" => 150,
      "max_heroes_count" => 2,
      "max_special_choices" => 1,
      "max_rare_choices" => 1,
      "max_war_machines" => 1,
      "max_chariots" => 1,
      "max_flyers" => 1,
      "allow_lords" => false,
      "allow_special" => true,
      "allow_rare" => true,
      "allow_war_machines" => true,
      "allow_chariots" => true,
      "allow_flyers" => true,
      "allow_magic_items" => true,
      "warband_unit_sizes" => true,
      "special_rules" => [
        "0-2 Hero-level characters (combined max 150 pts)",
        "May take 1 Special + 1 Rare, OR 2 Special (no Rare)",
        "0-1 War Machine or Chariot",
        "0-1 Flying unit or creature",
        "Minimum unit sizes reduced (see rules)"
      ]
    } 
  },
  # Standard formats
  { 
    name: "Border Patrol", 
    points_limit: 500, 
    restrictions: { 
      "max_lords_percent" => 0, 
      "max_heroes_percent" => 25, 
      "min_core_percent" => 25,
      "max_special_choices" => 2,
      "max_rare_choices" => 1,
      "allow_lords" => false
    } 
  },
  { 
    name: "Skirmish", 
    points_limit: 1000, 
    restrictions: { 
      "max_lords_percent" => 0, 
      "max_heroes_percent" => 50, 
      "min_core_percent" => 25,
      "allow_lords" => false
    } 
  },
  { 
    name: "Standard", 
    points_limit: 2000, 
    restrictions: { 
      "max_lords_percent" => 25, 
      "max_heroes_percent" => 25, 
      "min_core_percent" => 25 
    } 
  },
  { 
    name: "Grand Battle", 
    points_limit: 3000, 
    restrictions: { 
      "max_lords_percent" => 25, 
      "max_heroes_percent" => 25, 
      "min_core_percent" => 25 
    } 
  },
  { 
    name: "Apocalypse", 
    points_limit: 5000, 
    restrictions: { 
      "max_lords_percent" => 25, 
      "max_heroes_percent" => 25, 
      "min_core_percent" => 25 
    } 
  }
]

formats.each do |format|
  gf = GameFormat.find_or_initialize_by(name: format[:name])
  gf.points_limit = format[:points_limit]
  gf.restrictions = format[:restrictions]
  gf.save!
end

# Rulebooks
puts "Creating rulebooks..."
rulebooks = [
  { title: "Warhammer Fantasy Battles Rulebook", category: "core", source: "6th Edition Core Rules", description: "The complete rules for playing Warhammer Fantasy Battles 6th Edition." },
  { title: "Ravening Hordes", category: "core", source: "Interim Army Lists", description: "Temporary army lists released at the start of 6th Edition." },
  { title: "Storm of Chaos", category: "supplement", source: "Campaign Supplement 2004", description: "Worldwide campaign supplement with special rules, new army lists (Kislev, Cult of Ulric), and the invasion of Archaon." },
  { title: "Warhammer Siege", category: "supplement", source: "Siege Rules", description: "Complete rules for siege battles including castles, siege equipment, and special scenarios." },
  { title: "General's Compendium", category: "supplement", source: "Campaign & Scenarios", description: "Rules for campaigns, Warband games, scenarios, and special battles including the Warband rules for small games." },
  { title: "Core Rules FAQ", category: "faq", source: "Official FAQ", description: "Official clarifications for the main rulebook." },
  { title: "Magic Items Errata", category: "errata", source: "Official Errata", description: "Corrections and updates to magic items." }
]

rulebooks.each do |rb|
  Rulebook.find_or_create_by!(title: rb[:title]) do |rulebook|
    rulebook.category = rb[:category]
    rulebook.source = rb[:source]
    rulebook.description = rb[:description]
  end
end

# Armies
puts "Creating armies..."
armies_data = [
  # Main Army Books
  { name: "The Empire", source: "Army Book 2000", description: "The greatest nation of men, united under the Emperor Karl Franz. State troops, knightly orders, and black powder weapons." },
  { name: "High Elves", source: "Army Book 2003", description: "Ancient and noble elves from Ulthuan, masters of magic and warfare." },
  { name: "Dwarfs", source: "Army Book 2000", description: "Proud and stubborn mountain folk, master craftsmen and fierce warriors with unmatched artillery." },
  { name: "Bretonnia", source: "Army Book 2003", description: "Chivalrous knights and their peasant levies, blessed by the Lady of the Lake." },
  { name: "Wood Elves", source: "Army Book 2005", description: "Mysterious guardians of Athel Loren, masters of archery and forest spirits." },
  { name: "Lizardmen", source: "Army Book 2003", description: "Ancient servants of the Old Ones, cold-blooded warriors from the jungles of Lustria." },
  { name: "Orcs & Goblins", source: "Army Book 2000", description: "The greenskin hordes, savage and unpredictable Waaagh!" },
  { name: "Ogre Kingdoms", source: "Army Book 2004", description: "Massive brutes from the Mountains of Mourn, always hungry for war and meat." },
  { name: "Beastmen", source: "Beasts of Chaos 2003", description: "The true children of Chaos, Gors and Ungors dwelling in the dark forests." },
  { name: "Vampire Counts", source: "Army Book 2001", description: "Undead legions of Sylvania led by immortal vampire lords." },
  { name: "Tomb Kings", source: "Army Book 2002", description: "Ancient kings of Nehekhara risen from their tombs to reclaim their glory." },
  { name: "Warriors of Chaos", source: "Hordes of Chaos 2002", description: "Mortal followers of the Dark Gods, clad in chaos-forged armor." },
  { name: "Daemons of Chaos", source: "Hordes of Chaos 2002", description: "The daemonic legions of the Chaos Gods made manifest in the mortal realm." },
  { name: "Skaven", source: "Army Book 2002", description: "Ratmen from the Under-Empire, countless, treacherous, and wielding warpstone technology." },
  { name: "Dark Elves", source: "Army Book 2001", description: "Cruel raiders from Naggaroth, masters of torture, shadow magic, and cold one knights." },
  
  # White Dwarf / Supplemental
  { name: "Dogs of War", source: "White Dwarf / Ravening Hordes", description: "Mercenary regiments from across the Old World, fighting for gold and glory." },
  { name: "Chaos Dwarfs", source: "Ravening Hordes / White Dwarf", description: "Twisted dwarfs who worship Hashut, masters of industry, slavery, and daemonic machinery." },
  { name: "Kislev", source: "Storm of Chaos / White Dwarf 288", description: "Northern nation of men, stalwart defenders against Chaos with Winged Lancers and Ice Magic." },
  { name: "Cult of Ulric", source: "Storm of Chaos", description: "Devoted followers of the wolf god Ulric, fierce warriors of Middenheim." },
  { name: "Zombie Pirates", source: "White Dwarf", description: "The cursed fleet of the Vampire Coast, undead buccaneers and sea monsters." }
]

armies_data.each do |army_data|
  army = Army.find_or_initialize_by(name: army_data[:name])
  army.source = army_data[:source]
  army.description = army_data[:description]
  army.save!
end

# Sample Units for Empire
puts "Creating sample units for The Empire..."
empire = Army.find_by(name: "The Empire")

if empire
  empire_units = [
    # Lords
    { name: "General of the Empire", unit_type: "lord", base_cost: 65, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 5, "BS" => 5, "S" => 4, "T" => 4, "W" => 3, "I" => 5, "A" => 3, "Ld" => 9 },
      special_rules: "May be mounted on Warhorse, Pegasus, or Griffon" },
    { name: "Grand Master", unit_type: "lord", base_cost: 145, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 6, "BS" => 5, "S" => 4, "T" => 4, "W" => 3, "I" => 6, "A" => 4, "Ld" => 9 },
      special_rules: "Inner Circle, Knightly Orders, must lead a unit of Knights" },
    { name: "Wizard Lord", unit_type: "lord", base_cost: 165, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 3, "I" => 3, "A" => 1, "Ld" => 8 },
      special_rules: "Level 3 Wizard, may be upgraded to Level 4 (+35 pts)" },
    { name: "Arch Lector", unit_type: "lord", base_cost: 155, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 3, "I" => 4, "A" => 2, "Ld" => 9 },
      special_rules: "Prayers of Sigmar, Righteous Fury, Hatred, may ride War Altar" },

    # Heroes
    { name: "Captain of the Empire", unit_type: "hero", base_cost: 50, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 5, "BS" => 5, "S" => 4, "T" => 4, "W" => 2, "I" => 5, "A" => 2, "Ld" => 8 },
      special_rules: "May carry Battle Standard (+25 pts)" },
    { name: "Battle Wizard", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Level 1 Wizard, may be upgraded to Level 2 (+35 pts)" },
    { name: "Warrior Priest", unit_type: "hero", base_cost: 90, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 4, "A" => 2, "Ld" => 8 },
      special_rules: "Prayers of Sigmar, Righteous Fury, Hatred" },
    { name: "Engineer", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 3, "BS" => 4, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "May join War Machines, re-roll one Artillery dice per turn" },

    # Core
    { name: "State Troops (Swordsmen)", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 30,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "May have Detachments" },
    { name: "State Troops (Halberdiers)", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 30,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Halberds, May have Detachments" },
    { name: "State Troops (Spearmen)", unit_type: "core", base_cost: 45, cost_per_model: 4, min_size: 10, max_size: 30,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Spears, May have Detachments" },
    { name: "Handgunners", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 20,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Handguns (24\", S4, Move or Fire, Armour Piercing)" },
    { name: "Crossbowmen", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 20,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Crossbows (30\", S4)" },
    { name: "Free Company", unit_type: "core", base_cost: 50, cost_per_model: 5, min_size: 10, max_size: 25,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Two Hand Weapons, Skirmishers" },
    { name: "Huntsmen", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 20,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Bows, Scouts, Skirmishers" },
    { name: "Knights", unit_type: "core", base_cost: 110, cost_per_model: 22, min_size: 5, max_size: 15,
      stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
      special_rules: "Heavy Armour, Shield, Lance, Barded Warhorse" },

    # Special
    { name: "Greatswords", unit_type: "special", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30,
      stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
      special_rules: "Great Weapons, Stubborn, May have Detachments" },
    { name: "Pistoliers", unit_type: "special", base_cost: 95, cost_per_model: 19, min_size: 5, max_size: 10,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Brace of Pistols, Fast Cavalry" },
    { name: "Outriders", unit_type: "special", base_cost: 105, cost_per_model: 21, min_size: 5, max_size: 10,
      stats: { "M" => 4, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
      special_rules: "Repeater Handguns, Fast Cavalry" },
    { name: "Great Cannon", unit_type: "special", base_cost: 100, min_size: 1, max_size: 1,
      stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 7, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
      special_rules: "War Machine, Cannon rules, 3 crew" },
    { name: "Mortar", unit_type: "special", base_cost: 75, min_size: 1, max_size: 1,
      stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 3, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
      special_rules: "War Machine, Stone Thrower, Guess range, 3 crew" },

    # Rare
    { name: "Helblaster Volley Gun", unit_type: "rare", base_cost: 110, min_size: 1, max_size: 1,
      stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
      special_rules: "War Machine, D6 shots per barrel, may Misfire, 3 crew" },
    { name: "Helstorm Rocket Battery", unit_type: "rare", base_cost: 115, min_size: 1, max_size: 1,
      stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
      special_rules: "War Machine, Stone Thrower, Inaccurate, 3 crew" },
    { name: "Steam Tank", unit_type: "rare", base_cost: 300, min_size: 1, max_size: 1,
      stats: { "M" => "Special", "WS" => "-", "BS" => "-", "S" => 6, "T" => 6, "W" => 10, "I" => "-", "A" => "D6", "Ld" => "-" },
      special_rules: "Unbreakable, Steam Points, Cannon, 1+ Armour Save" },
    { name: "Flagellants", unit_type: "rare", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30,
      stats: { "M" => 4, "WS" => 3, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 2, "Ld" => 10 },
      special_rules: "Unbreakable, Frenzy, Flails, The End is Nigh!" }
  ]

  empire_units.each do |unit_data|
    unit = Unit.find_or_initialize_by(army: empire, name: unit_data[:name])
    unit.unit_type = unit_data[:unit_type]
    unit.base_cost = unit_data[:base_cost]
    unit.cost_per_model = unit_data[:cost_per_model]
    unit.min_size = unit_data[:min_size]
    unit.max_size = unit_data[:max_size]
    unit.stats = unit_data[:stats]
    unit.special_rules = unit_data[:special_rules]
    unit.save!
  end
end

puts "Seed complete! Created:"
puts "  - #{GameFormat.count} game formats"
puts "  - #{Rulebook.count} rulebooks"
puts "  - #{Army.count} armies"
puts "  - #{Unit.count} units"
