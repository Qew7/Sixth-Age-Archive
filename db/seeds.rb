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

# Load army seed files
puts "Loading army data from seed files..."
Dir[Rails.root.join("db/seeds/armies/_base.rb")].each { |f| require f }
Dir[Rails.root.join("db/seeds/armies/*.rb")].sort.each do |file|
  next if file.include?("_base.rb")
  require file
end

# Seed all armies
puts "Creating units for all armies..."
seed_empire if defined?(seed_empire)
seed_orcs_and_goblins if defined?(seed_orcs_and_goblins)
seed_high_elves if defined?(seed_high_elves)
seed_dark_elves if defined?(seed_dark_elves)
seed_wood_elves if defined?(seed_wood_elves)
seed_dwarfs if defined?(seed_dwarfs)
seed_bretonnia if defined?(seed_bretonnia)
seed_vampire_counts if defined?(seed_vampire_counts)
seed_tomb_kings if defined?(seed_tomb_kings)
seed_skaven if defined?(seed_skaven)
seed_lizardmen if defined?(seed_lizardmen)
seed_warriors_of_chaos if defined?(seed_warriors_of_chaos)
seed_beastmen if defined?(seed_beastmen)
seed_ogre_kingdoms if defined?(seed_ogre_kingdoms)

# Special Rules, Weapons, Armour, Magic Items
puts "Creating special rules, weapons, armour, and magic items..."
special_rules_data = [
  # ============================================
  # UNIVERSAL SPECIAL RULES
  # ============================================
  { name: "Stubborn", category: "rule", description: "Unit always uses its unmodified Leadership for Break tests, regardless of combat result modifiers." },
  { name: "Unbreakable", category: "rule", description: "Unit never takes Break tests and will never flee. If defeated in combat, the unit loses 1 additional wound for each point by which they lost." },
  { name: "Frenzy", category: "rule", description: "Unit must always pursue fleeing enemies. Gains +1 Attack but cannot choose to flee as charge reaction. Lost if unit loses a round of combat." },
  { name: "Hatred", category: "rule", description: "May re-roll all failed To Hit rolls in the first round of any combat." },
  { name: "Fear", category: "rule", description: "Enemy units must pass a Leadership test to charge. If defeated in combat by Fear-causing unit, enemy automatically flees." },
  { name: "Terror", category: "rule", description: "Causes Fear. Additionally, enemy units within 6\" must pass a Leadership test at the start of each turn or flee." },
  { name: "Immune to Psychology", category: "rule", description: "Unit is not affected by Panic, Fear, or Terror. May still flee voluntarily and from lost combats." },
  { name: "Killing Blow", category: "rule", description: "Any To Wound roll of 6 in close combat automatically kills the model (no saves allowed except Ward Saves). Does not work against models with more than 3 Wounds." },
  { name: "Regeneration", category: "rule", description: "At the end of each phase, roll a D6 for each wound suffered. On 4+, the wound is regenerated. Does not work against fire or flaming attacks." },
  { name: "Poisoned Attacks", category: "rule", description: "Any To Hit roll of 6 automatically wounds (no need to roll To Wound). Armour saves apply as normal." },
  { name: "Flammable", category: "rule", description: "Suffers double wounds from flaming attacks. Regeneration does not work against flaming attacks." },
  { name: "Magic Resistance", category: "rule", description: "Unit gains additional dice to dispel spells targeting them. Magic Resistance (1) = +1 dice, (2) = +2 dice, etc." },
  { name: "Ward Save", category: "rule", description: "A special save that may be taken in addition to armour saves. Ward Saves are not modified by Strength or magical attacks." },
  { name: "Fly", category: "rule", description: "Model can move up to 20\" ignoring terrain and models. Cannot march. When charging, use ground movement rate instead." },
  { name: "Skirmishers", category: "rule", description: "360° line of sight, -1 to hit with missile weapons. May shoot in any direction. Free reform. No rank bonus." },
  { name: "Fast Cavalry", category: "rule", description: "May reform freely during move. May shoot even after marching. Counts as Skirmishers when fleeing." },
  { name: "Scouts", category: "rule", description: "May deploy after both armies are set up, anywhere on the table more than 10\" from enemy models." },
  { name: "Ambushers", category: "rule", description: "May be kept off the table and enter from any table edge from turn 2 onwards on a 4+." },
  { name: "Always Strikes First", category: "rule", description: "Model always strikes first in close combat, regardless of Initiative or charging. If both models have this rule, use Initiative as normal." },
  { name: "Always Strikes Last", category: "rule", description: "Model always strikes last in close combat, regardless of Initiative." },
  { name: "Armour Piercing", category: "rule", description: "Enemy armour save is reduced by an additional -1." },
  { name: "Move or Fire", category: "rule", description: "May not shoot if the unit moved this turn." },
  { name: "Multiple Shots", category: "rule", description: "May fire multiple shots, but all shots suffer -1 To Hit." },
  { name: "Volley Fire", category: "rule", description: "Ranks behind the first may shoot if the unit did not move." },
  { name: "Large Target", category: "rule", description: "May always be seen and shot at. Does not block line of sight for other Large Targets." },
  { name: "War Machine", category: "rule", description: "Follows special rules for war machines. Requires crew to operate." },
  { name: "Chariot", category: "rule", description: "Follows special chariot rules. Impact hits on charge. Crew may fight in combat." },
  { name: "Monster", category: "rule", description: "Follows monster rules. Uses Monster Reaction table when rider is killed." },
  { name: "Detachments", category: "rule", description: "State Troops may have up to 2 Detachments attached. Detachments may Counter-Charge or Support Fire." },
  { name: "Inner Circle", category: "rule", description: "Elite knights of the Knightly Orders. +1 WS and Strength." },
  { name: "Prayers of Sigmar", category: "rule", description: "May invoke one Prayer per turn. Prayers affect the Priest and his unit." },
  { name: "Righteous Fury", category: "rule", description: "The Priest and his unit Hate all enemies." },
  { name: "Steam Points", category: "rule", description: "Steam Tank generates D3+1 Steam Points per turn. Used for movement, shooting, and attacks." },
  { name: "The End is Nigh!", category: "rule", description: "Flagellants gain +1 Attack for each model killed in the unit (up to maximum of +3)." },
  
  # ============================================
  # CLOSE COMBAT WEAPONS
  # ============================================
  { name: "Hand Weapon", category: "weapon", description: "Basic close combat weapon. No special rules. May be used with a shield for Parry save (6+ ward save in close combat)." },
  { name: "Great Weapon", category: "weapon", description: "+2 Strength. Requires two hands. Always Strikes Last." },
  { name: "Great Weapons", category: "weapon", description: "+2 Strength. Requires two hands. Always Strikes Last." },
  { name: "Halberd", category: "weapon", description: "+1 Strength. Requires two hands." },
  { name: "Halberds", category: "weapon", description: "+1 Strength. Requires two hands." },
  { name: "Spear", category: "weapon", description: "Infantry: Fight in 2 ranks. Cavalry: +1 Strength on the charge." },
  { name: "Spears", category: "weapon", description: "Infantry: Fight in 2 ranks. Cavalry: +1 Strength on the charge." },
  { name: "Lance", category: "weapon", description: "+2 Strength on the charge. Cavalry only. After first round of combat, counts as hand weapon." },
  { name: "Flail", category: "weapon", description: "+2 Strength in the first round of combat only. Requires two hands." },
  { name: "Flails", category: "weapon", description: "+2 Strength in the first round of combat only. Requires two hands." },
  { name: "Morning Star", category: "weapon", description: "+1 Strength in the first round of combat only." },
  { name: "Two Hand Weapons", category: "weapon", description: "+1 Attack. Cannot use a shield in close combat." },
  { name: "Additional Hand Weapon", category: "weapon", description: "+1 Attack. Cannot use a shield in close combat." },
  
  # ============================================
  # MISSILE WEAPONS
  # ============================================
  { name: "Bow", category: "weapon", description: "Range 24\", Strength 3. May move and shoot." },
  { name: "Bows", category: "weapon", description: "Range 24\", Strength 3. May move and shoot." },
  { name: "Shortbow", category: "weapon", description: "Range 16\", Strength 3. May move and shoot." },
  { name: "Longbow", category: "weapon", description: "Range 30\", Strength 3. May move and shoot." },
  { name: "Crossbow", category: "weapon", description: "Range 30\", Strength 4. Move or Fire." },
  { name: "Crossbows", category: "weapon", description: "Range 30\", Strength 4. Move or Fire." },
  { name: "Repeater Crossbow", category: "weapon", description: "Range 24\", Strength 3. Two shots. May move and shoot." },
  { name: "Handgun", category: "weapon", description: "Range 24\", Strength 4. Armour Piercing. Move or Fire." },
  { name: "Handguns", category: "weapon", description: "Range 24\", Strength 4. Armour Piercing. Move or Fire." },
  { name: "Repeater Handgun", category: "weapon", description: "Range 24\", Strength 4. Three shots. Armour Piercing. Move or Fire." },
  { name: "Repeater Handguns", category: "weapon", description: "Range 24\", Strength 4. Three shots. Armour Piercing. Move or Fire." },
  { name: "Pistol", category: "weapon", description: "Range 8\", Strength 4. Armour Piercing. May be used in close combat: +1 Attack at Strength 4, Armour Piercing." },
  { name: "Brace of Pistols", category: "weapon", description: "Two pistols. Range 8\", Strength 4, Armour Piercing. In close combat: +1 Attack at S4 AP." },
  { name: "Throwing Knife", category: "weapon", description: "Range 6\", Strength as user. Thrown Weapon: may be used in addition to moving and fighting." },
  { name: "Throwing Axe", category: "weapon", description: "Range 6\", Strength as user +1. Thrown Weapon." },
  { name: "Javelin", category: "weapon", description: "Range 8\", Strength as user. Thrown Weapon. May be used as spear in close combat." },
  { name: "Sling", category: "weapon", description: "Range 18\", Strength 3. Two shots if stationary within half range." },
  
  # ============================================
  # ARMOUR
  # ============================================
  { name: "Light Armour", category: "armour", description: "6+ Armour Save." },
  { name: "Heavy Armour", category: "armour", description: "5+ Armour Save." },
  { name: "Full Plate Armour", category: "armour", description: "4+ Armour Save. Characters only." },
  { name: "Shield", category: "armour", description: "+1 to Armour Save. With hand weapon only: Parry (6+ Ward Save in close combat)." },
  { name: "Buckler", category: "armour", description: "Parry: 6+ Ward Save in close combat. Cannot be combined with other shields." },
  { name: "Barding", category: "armour", description: "+1 to cavalry model's Armour Save. Movement reduced to 7\"." },
  { name: "Barded Warhorse", category: "armour", description: "Warhorse with barding. Rider gets +2 to Armour Save total (mount +1, barding +1). Movement 7\"." },
  
  # ============================================
  # COMMON MAGIC WEAPONS
  # ============================================
  { name: "Sword of Striking", category: "magic_item", description: "+1 To Hit in close combat. 30 points." },
  { name: "Sword of Battle", category: "magic_item", description: "+1 Attack. 25 points." },
  { name: "Sword of Might", category: "magic_item", description: "+1 Strength. 20 points." },
  { name: "Biting Blade", category: "magic_item", description: "-1 to enemy's Armour Save. 10 points." },
  { name: "Enchanted Shield", category: "magic_item", description: "5+ Armour Save. Counts as shield. 10 points." },
  { name: "Sword of Swift Slaying", category: "magic_item", description: "Always Strikes First. 25 points." },
  { name: "Berserker Sword", category: "magic_item", description: "Bearer has Frenzy that cannot be lost. 25 points." },
  
  # ============================================
  # COMMON MAGIC ARMOUR
  # ============================================
  { name: "Armour of Meteoric Iron", category: "magic_item", description: "1+ Armour Save that cannot be improved. 25 points." },
  { name: "Armour of Fortune", category: "magic_item", description: "Heavy armour. 5+ Ward Save. 35 points." },
  { name: "Helm of Many Eyes", category: "magic_item", description: "+1 to Armour Save. Always Strikes First. Wearer is subject to Stupidity. 25 points." },
  { name: "Gambler's Armour", category: "magic_item", description: "Heavy armour. 6+ Ward Save. 20 points." },
  { name: "Spellshield", category: "magic_item", description: "Shield. Magic Resistance (1). 20 points." },
  { name: "Shield of Ptolos", category: "magic_item", description: "Shield. 1+ Armour Save against shooting. 25 points." },
  
  # ============================================
  # COMMON TALISMANS
  # ============================================
  { name: "Talisman of Protection", category: "magic_item", description: "5+ Ward Save. 15 points." },
  { name: "Dawnstone", category: "magic_item", description: "Re-roll failed Armour Saves. 25 points." },
  { name: "Talisman of Endurance", category: "magic_item", description: "5+ Ward Save. 30 points." },
  { name: "Obsidian Amulet", category: "magic_item", description: "Magic Resistance (2). 30 points." },
  { name: "Obsidian Lodestone", category: "magic_item", description: "Magic Resistance (3). 45 points." },
  { name: "Talisman of Preservation", category: "magic_item", description: "4+ Ward Save. 45 points." },
  { name: "Obsidian Trinket", category: "magic_item", description: "Magic Resistance (1). 15 points." },
  { name: "Seed of Rebirth", category: "magic_item", description: "Regeneration. 25 points." },
  { name: "Dragonbane Gem", category: "magic_item", description: "2+ Ward Save against Flaming Attacks. 5 points." },
  { name: "Pidgeon Plucker Pendant", category: "magic_item", description: "5+ Ward Save against all non-magical attacks. 15 points." },
  { name: "Lucky Trinket", category: "magic_item", description: "6+ Ward Save. 5 points." },
  
  # ============================================
  # COMMON ARCANE ITEMS
  # ============================================
  { name: "Dispel Scroll", category: "magic_item", description: "One use. Automatically dispel an enemy spell. 25 points." },
  { name: "Power Stone", category: "magic_item", description: "One use. +2 dice to cast a single spell. 25 points." },
  { name: "Staff of Sorcery", category: "magic_item", description: "+1 to dispel attempts. 35 points." },
  { name: "Wand of Jet", category: "magic_item", description: "One use. Add +D6 to casting roll. Miscasts on any double. 35 points." },
  { name: "Channeling Staff", category: "magic_item", description: "+1 Power Dice in each Magic Phase. 30 points." },
  { name: "Rod of Power", category: "magic_item", description: "Save up to 3 unused Power Dice for next turn. 35 points." },
  { name: "Wizarding Hat", category: "magic_item", description: "Wearer is a Level 1 Wizard. May not wear other armour. 50 points." },
  
  # ============================================
  # COMMON ENCHANTED ITEMS
  # ============================================
  { name: "Potion of Speed", category: "magic_item", description: "One use. +3 Initiative for one turn. 5 points." },
  { name: "Potion of Strength", category: "magic_item", description: "One use. +3 Strength for one turn. 10 points." },
  { name: "Potion of Toughness", category: "magic_item", description: "One use. +3 Toughness for one turn. 10 points." },
  { name: "Ruby Ring of Ruin", category: "magic_item", description: "Bound Spell (Power Level 3). Contains Fireball (D6 S4 Flaming hits). 25 points." },
  { name: "Healing Potion", category: "magic_item", description: "One use. Recover D3 Wounds. 35 points." },
  { name: "Featherfoe Torc", category: "magic_item", description: "Flying creatures must re-roll successful To Hit rolls in close combat. 35 points." },
  { name: "Van Horstman's Speculum", category: "magic_item", description: "In challenges, swap WS, S, T, I, and A with opponent. 40 points." },
  { name: "The Other Trickster's Shard", category: "magic_item", description: "Enemy in base contact must re-roll successful Ward Saves. 15 points." },
  { name: "Ironcurse Icon", category: "magic_item", description: "6+ Ward Save vs War Machine attacks for bearer and unit. 5 points." },
  
  # ============================================
  # COMMON MAGIC STANDARDS
  # ============================================
  { name: "War Banner", category: "magic_item", description: "+1 Combat Resolution. 25 points." },
  { name: "Banner of Swiftness", category: "magic_item", description: "+1 Movement. 15 points." },
  { name: "Ranger's Standard", category: "magic_item", description: "Unit has Strider. 25 points." },
  { name: "Razor Standard", category: "magic_item", description: "Unit has Armour Piercing. 25 points." },
  { name: "Warbanner", category: "magic_item", description: "+1 Combat Resolution. 25 points." },
  { name: "Banner of Eternal Flame", category: "magic_item", description: "Unit has Flaming Attacks. 10 points." },
  { name: "Gleaming Pennant", category: "magic_item", description: "One use. Re-roll failed Leadership test. 5 points." },
  { name: "Standard of Discipline", category: "magic_item", description: "+1 Leadership. May not use General's Leadership. 15 points." },
  { name: "Banner of Courage", category: "magic_item", description: "Unit is Stubborn. 45 points." },
  { name: "Scarecrow Banner", category: "magic_item", description: "Fear against Flying creatures. 5 points." },
  { name: "Lichebone Pennant", category: "magic_item", description: "Magic Resistance (1). 15 points." },
  { name: "Standard of Shielding", category: "magic_item", description: "6+ Ward Save vs shooting. 20 points." },
  
  # ============================================
  # WAR MACHINE RULES
  # ============================================
  { name: "Stone Thrower", category: "rule", description: "War machine that fires using the stone thrower template. Guess range before firing. Strength 3(9) at centre, S3 under template. No armour saves allowed against centre hit." },
  { name: "Cannon", category: "rule", description: "War machine that fires using cannon rules. Guess range, roll artillery dice for bounce. Strength 10, D6 wounds, no armour save. May misfire." },
  { name: "Bolt Thrower", category: "rule", description: "War machine that fires a single powerful bolt. Strength 6, causes D3 wounds. May fire as single shot or volley." },
  { name: "Inaccurate", category: "rule", description: "When rolling to hit, this weapon scatters D6\" in a random direction before resolving hits." },
  { name: "Misfire", category: "rule", description: "On a Misfire result on the Artillery dice, roll on the Misfire table. Results range from destroyed to delayed firing." },
  { name: "Guess Range", category: "rule", description: "Before firing, declare target point. Measure actual distance - if guess is wrong, shot lands short or overshoots." },
  
  # ============================================
  # WIZARD RULES
  # ============================================
  { name: "Wizard", category: "rule", description: "Can cast spells from their chosen Lore of Magic. Level determines number of spells known and power dice generated." },
  { name: "Level 1 Wizard", category: "rule", description: "Knows 1 spell. Generates 1 Power Dice per turn." },
  { name: "Level 2 Wizard", category: "rule", description: "Knows 2 spells. Generates 1 Power Dice per turn." },
  { name: "Level 3 Wizard", category: "rule", description: "Knows 3 spells. Generates 2 Power Dice per turn." },
  { name: "Level 4 Wizard", category: "rule", description: "Knows 4 spells. Generates 2 Power Dice per turn." },
  
  # ============================================
  # ADDITIONAL RULES
  # ============================================
  { name: "Battle Standard", category: "rule", description: "Units within 12\" may re-roll failed Break tests. If lost, enemy gains +D6 Victory Points." },
  { name: "Knightly Orders", category: "rule", description: "Empire Knights belong to various Knightly Orders, each with their own traditions and heraldry." },
  { name: "Counter-Charge", category: "rule", description: "Detachment special rule. If parent unit is charged, detachment may declare a counter-charge." },
  { name: "Support Fire", category: "rule", description: "Detachment special rule. If parent unit is charged, detachment may Stand and Shoot at the chargers." },
  { name: "Stupidity", category: "rule", description: "At the start of each turn, take a Leadership test. If failed, unit moves D6\" forward and may do nothing else this turn." },
  { name: "1+ Armour Save", category: "armour", description: "Best possible armour save. Still fails on a natural roll of 1. May be modified by high Strength attacks." },
  
  # ============================================
  # EQUIPMENT & MOUNTS
  # ============================================
  { name: "Warhorse", category: "equipment", description: "Cavalry mount. M8, WS3, S3, T3, W1, I3, A1, Ld5." },
  { name: "Barded Steed", category: "equipment", description: "Cavalry mount with barding. +1 Armour Save for rider. Movement reduced to 7\"." },
  { name: "Pegasus", category: "equipment", description: "Flying mount. M8, WS3, S4, T4, W3, I4, A2, Ld6. Fly." },
  { name: "Griffon", category: "equipment", description: "Monstrous flying mount. M6, WS5, S5, T5, W4, I5, A4, Ld7. Fly, Terror, Large Target." },
  { name: "Dragon", category: "equipment", description: "Monstrous flying mount. Causes Terror. Has breath weapon. Various sizes available." },
  { name: "Cold One", category: "equipment", description: "Cavalry mount. M7, WS3, S4, T4, W1, I1, A2, Ld3. Causes Fear. Stupidity." },
  { name: "Chariot", category: "equipment", description: "Pulled by horses or other beasts. D6 impact hits on charge. Follows chariot rules." },
  { name: "War Altar", category: "equipment", description: "Empire special chariot. Grants ward save to nearby units. May carry Arch Lector." }
]

special_rules_data.each do |rule_data|
  rule = SpecialRule.find_or_initialize_by(name: rule_data[:name])
  rule.description = rule_data[:description]
  rule.category = rule_data[:category]
  rule.save!
end

# Update Empire units with base sizes
puts "Updating unit base sizes..."
empire = Army.find_by(name: "The Empire")
if empire
  base_sizes = {
    # Characters (usually 20x20 or 25x25 on foot)
    "General of the Empire" => "20x20mm (on foot) / 25x50mm (mounted)",
    "Grand Master" => "25x50mm (mounted)",
    "Wizard Lord" => "20x20mm (on foot)",
    "Arch Lector" => "20x20mm (on foot) / Chariot base (War Altar)",
    "Captain of the Empire" => "20x20mm (on foot) / 25x50mm (mounted)",
    "Battle Wizard" => "20x20mm",
    "Warrior Priest" => "20x20mm (on foot) / 25x50mm (mounted)",
    "Engineer" => "20x20mm",
    # Infantry
    "State Troops (Swordsmen)" => "20x20mm",
    "State Troops (Halberdiers)" => "20x20mm",
    "State Troops (Spearmen)" => "20x20mm",
    "Handgunners" => "20x20mm",
    "Crossbowmen" => "20x20mm",
    "Free Company" => "20x20mm",
    "Huntsmen" => "20x20mm",
    "Greatswords" => "20x20mm",
    "Flagellants" => "20x20mm",
    # Cavalry
    "Knights" => "25x50mm",
    "Pistoliers" => "25x50mm",
    "Outriders" => "25x50mm",
    # War Machines
    "Great Cannon" => "War Machine base",
    "Mortar" => "War Machine base",
    "Helblaster Volley Gun" => "War Machine base",
    "Helstorm Rocket Battery" => "War Machine base",
    "Steam Tank" => "Large oval base"
  }
  
  base_sizes.each do |unit_name, base_size|
    unit = Unit.find_by(army: empire, name: unit_name)
    if unit
      unit.update!(base_size: base_size)
    end
  end
end

puts "Seed complete! Created:"
puts "  - #{GameFormat.count} game formats"
puts "  - #{Rulebook.count} rulebooks"
puts "  - #{Army.count} armies"
puts "  - #{Unit.count} units"
puts "  - #{SpecialRule.count} special rules"
