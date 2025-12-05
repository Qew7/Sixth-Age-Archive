# frozen_string_literal: true

puts "Seeding database..."

# Game Formats
puts "Creating game formats..."
formats = [
  { name: "Skirmish", points_limit: 500, restrictions: { "max_lords_percent" => 0, "max_heroes_percent" => 50, "min_core_percent" => 25 } },
  { name: "Border Patrol", points_limit: 750, restrictions: { "max_lords_percent" => 0, "max_heroes_percent" => 50, "min_core_percent" => 25 } },
  { name: "Standard", points_limit: 2000, restrictions: { "max_lords_percent" => 25, "max_heroes_percent" => 25, "min_core_percent" => 25 } },
  { name: "Grand Battle", points_limit: 3000, restrictions: { "max_lords_percent" => 25, "max_heroes_percent" => 25, "min_core_percent" => 25 } },
  { name: "Apocalypse", points_limit: 5000, restrictions: { "max_lords_percent" => 25, "max_heroes_percent" => 25, "min_core_percent" => 25 } }
]

formats.each do |format|
  GameFormat.find_or_create_by!(name: format[:name]) do |gf|
    gf.points_limit = format[:points_limit]
    gf.restrictions = format[:restrictions]
  end
end

# Rulebooks
puts "Creating rulebooks..."
rulebooks = [
  { title: "Warhammer Fantasy Battles Rulebook", category: "core", source: "6th Edition Core Rules", description: "The complete rules for playing Warhammer Fantasy Battles 6th Edition." },
  { title: "Ravening Hordes", category: "core", source: "Interim Army Lists", description: "Temporary army lists released at the start of 6th Edition." },
  { title: "Storm of Chaos", category: "supplement", source: "Campaign Supplement", description: "Worldwide campaign supplement with special rules and new army lists." },
  { title: "Warhammer Siege", category: "supplement", source: "Siege Rules", description: "Complete rules for siege battles." },
  { title: "General's Compendium", category: "supplement", source: "Campaign System", description: "Rules for campaigns, scenarios, and special battles." },
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
  # Order
  { name: "The Empire", source: "Army Book 2004", description: "The greatest nation of men, united under the Emperor Karl Franz." },
  { name: "High Elves", source: "Army Book 2003", description: "Ancient and noble elves from Ulthuan, masters of magic and warfare." },
  { name: "Dwarfs", source: "Army Book 2003", description: "Proud and stubborn mountain folk, master craftsmen and fierce warriors." },
  { name: "Bretonnia", source: "Army Book 2003", description: "Chivalrous knights and their peasant levies, blessed by the Lady." },
  { name: "Wood Elves", source: "Army Book 2005", description: "Mysterious guardians of Athel Loren, masters of archery." },
  { name: "Lizardmen", source: "Army Book 2003", description: "Ancient servants of the Old Ones, cold-blooded warriors of the jungle." },
  { name: "Dogs of War", source: "White Dwarf", description: "Mercenary regiments from across the Old World." },
  
  # Destruction
  { name: "Orcs & Goblins", source: "Army Book 2003", description: "The greenskin hordes, savage and unpredictable." },
  { name: "Ogre Kingdoms", source: "Army Book 2004", description: "Massive brutes from the Mountains of Mourn, always hungry for war." },
  { name: "Beastmen", source: "Beasts of Chaos 2003", description: "The true children of Chaos, dwelling in the dark forests." },
  
  # Death
  { name: "Vampire Counts", source: "Army Book 2001", description: "Undead legions led by immortal vampire lords." },
  { name: "Tomb Kings", source: "Army Book 2002", description: "Ancient kings of Nehekhara risen from their tombs." },
  
  # Chaos
  { name: "Warriors of Chaos", source: "Hordes of Chaos 2002", description: "Mortal followers of the Dark Gods, clad in chaos-forged armor." },
  { name: "Daemons of Chaos", source: "Hordes of Chaos 2002", description: "The daemonic legions of the Chaos Gods made manifest." },
  { name: "Skaven", source: "Army Book 2002", description: "Ratmen from the Under-Empire, countless and treacherous." },
  { name: "Dark Elves", source: "Army Book 2001", description: "Cruel raiders from Naggaroth, masters of torture and shadow." },
  { name: "Chaos Dwarfs", source: "Ravening Hordes / White Dwarf", description: "Twisted dwarfs who worship Hashut, masters of industry and slavery." },
  
  # Special
  { name: "Kislev", source: "Storm of Chaos / White Dwarf 288", description: "Northern nation of men, stalwart defenders against Chaos." },
  { name: "Cult of Ulric", source: "Storm of Chaos", description: "Devoted followers of the wolf god Ulric." },
  { name: "Zombie Pirates", source: "White Dwarf", description: "The cursed fleet of the Vampire Coast." }
]

armies_data.each do |army_data|
  Army.find_or_create_by!(name: army_data[:name]) do |army|
    army.source = army_data[:source]
    army.description = army_data[:description]
  end
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
      special_rules: "Inner Circle, Knightly Orders" },
    { name: "Wizard Lord", unit_type: "lord", base_cost: 165, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 3, "I" => 3, "A" => 1, "Ld" => 8 },
      special_rules: "Level 3 Wizard, may be upgraded to Level 4" },

    # Heroes
    { name: "Captain of the Empire", unit_type: "hero", base_cost: 50, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 5, "BS" => 5, "S" => 4, "T" => 4, "W" => 2, "I" => 5, "A" => 2, "Ld" => 8 },
      special_rules: "May carry Battle Standard" },
    { name: "Battle Wizard", unit_type: "hero", base_cost: 65, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 2, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Level 1 Wizard, may be upgraded to Level 2" },
    { name: "Warrior Priest", unit_type: "hero", base_cost: 90, min_size: 1, max_size: 1,
      stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 4, "W" => 2, "I" => 4, "A" => 2, "Ld" => 8 },
      special_rules: "Prayers of Sigmar, Righteous Fury, Hatred" },

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
      special_rules: "Handguns, Move or Fire" },
    { name: "Crossbowmen", unit_type: "core", base_cost: 80, cost_per_model: 8, min_size: 10, max_size: 20,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Crossbows" },
    { name: "Knights", unit_type: "core", base_cost: 110, cost_per_model: 22, min_size: 5, max_size: 15,
      stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
      special_rules: "Heavy Armour, Shield, Lance, Barded Warhorse" },

    # Special
    { name: "Greatswords", unit_type: "special", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30,
      stats: { "M" => 4, "WS" => 4, "BS" => 3, "S" => 4, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
      special_rules: "Great Weapons, Stubborn" },
    { name: "Pistoliers", unit_type: "special", base_cost: 95, cost_per_model: 19, min_size: 5, max_size: 10,
      stats: { "M" => 4, "WS" => 3, "BS" => 3, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 7 },
      special_rules: "Brace of Pistols, Fast Cavalry" },
    { name: "Outriders", unit_type: "special", base_cost: 105, cost_per_model: 21, min_size: 5, max_size: 10,
      stats: { "M" => 4, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 1, "Ld" => 8 },
      special_rules: "Repeater Handguns, Fast Cavalry" },
    { name: "Great Cannon", unit_type: "special", base_cost: 100, min_size: 1, max_size: 1,
      stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 7, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
      special_rules: "War Machine, Cannon rules" },
    { name: "Mortar", unit_type: "special", base_cost: 75, min_size: 1, max_size: 1,
      stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 3, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
      special_rules: "War Machine, Stone Thrower rules, Guess range" },

    # Rare
    { name: "Helblaster Volley Gun", unit_type: "rare", base_cost: 110, min_size: 1, max_size: 1,
      stats: { "M" => "-", "WS" => "-", "BS" => "-", "S" => 5, "T" => 7, "W" => 3, "I" => "-", "A" => "-", "Ld" => "-" },
      special_rules: "War Machine, Multiple Shots, May Misfire" },
    { name: "Steam Tank", unit_type: "rare", base_cost: 300, min_size: 1, max_size: 1,
      stats: { "M" => "Special", "WS" => "-", "BS" => "-", "S" => 6, "T" => 6, "W" => 10, "I" => "-", "A" => "D6", "Ld" => "-" },
      special_rules: "Unbreakable, Steam Points, Cannon" },
    { name: "Flagellants", unit_type: "rare", base_cost: 100, cost_per_model: 10, min_size: 10, max_size: 30,
      stats: { "M" => 4, "WS" => 3, "BS" => 2, "S" => 3, "T" => 3, "W" => 1, "I" => 3, "A" => 2, "Ld" => 10 },
      special_rules: "Unbreakable, Frenzy, Flails, The End is Nigh!" }
  ]

  empire_units.each do |unit_data|
    Unit.find_or_create_by!(army: empire, name: unit_data[:name]) do |unit|
      unit.unit_type = unit_data[:unit_type]
      unit.base_cost = unit_data[:base_cost]
      unit.cost_per_model = unit_data[:cost_per_model]
      unit.min_size = unit_data[:min_size]
      unit.max_size = unit_data[:max_size]
      unit.stats = unit_data[:stats]
      unit.special_rules = unit_data[:special_rules]
    end
  end
end

puts "Seed complete! Created:"
puts "  - #{GameFormat.count} game formats"
puts "  - #{Rulebook.count} rulebooks"
puts "  - #{Army.count} armies"
puts "  - #{Unit.count} units"
