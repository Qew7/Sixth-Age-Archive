# Sixth Age Archive

A community archive and army builder for **Warhammer Fantasy Battles 6th Edition**.

![Ruby](https://img.shields.io/badge/Ruby-3.2+-red)
![Rails](https://img.shields.io/badge/Rails-8.0-red)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15+-blue)

## Features

### 📚 Rules Archive
- Core rulebook and supplements
- FAQs and errata
- Download PDFs of all official materials

### ⚔️ Army Books
- All official 6th Edition army books
- White Dwarf army lists (Kislev, Chaos Dwarfs, Zombie Pirates, etc.)
- Storm of Chaos supplements
- Organized by Grand Alliance (Order, Destruction, Death, Chaos)

### 🛡️ Army Builder
- Create and manage army lists
- Multiple game formats (500pts Skirmish to 5000pts Apocalypse)
- Automatic points calculation
- Composition validation (Lords %, Heroes %, Core %, etc.)
- Unit stats and special rules display
- PDF export (coming soon)

## Tech Stack

- **Framework:** Ruby on Rails 8.0
- **Database:** PostgreSQL
- **CSS:** Tailwind CSS 4
- **JavaScript:** Hotwire (Turbo + Stimulus)
- **File Storage:** Active Storage

## Getting Started

### Prerequisites

- Ruby 3.2+
- PostgreSQL 15+
- Node.js 18+ (for Tailwind CSS)

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/sixth-age-archive.git
cd sixth-age-archive

# Install dependencies
bundle install

# Setup database
bin/rails db:create db:migrate db:seed

# Start the server
bin/dev
```

Visit `http://localhost:3000`

## Database Schema

### Models

- **Rulebook** - Rules, supplements, FAQs, errata with PDF attachments
- **Army** - Factions/armies with PDF army books
- **Unit** - Unit profiles with stats, costs, upgrades
- **GameFormat** - Game formats with points limits and composition rules
- **ArmyList** - User-created army lists
- **ArmyListUnit** - Units in an army list with selected upgrades

## Adding Content

### Adding a new Army

```ruby
# In rails console or seeds.rb
Army.create!(
  name: "High Elves",
  source: "Army Book 2003",
  description: "Ancient and noble elves from Ulthuan"
)
```

### Adding Units

```ruby
army = Army.find_by(name: "High Elves")
Unit.create!(
  army: army,
  name: "Spearmen",
  unit_type: "core",
  base_cost: 90,
  cost_per_model: 9,
  min_size: 10,
  max_size: 30,
  stats: { "M" => 5, "WS" => 4, "BS" => 4, "S" => 3, "T" => 3, "W" => 1, "I" => 5, "A" => 1, "Ld" => 8 },
  special_rules: "Spears, Always Strikes First"
)
```

### Attaching PDFs

```ruby
rulebook = Rulebook.find_by(title: "Core Rulebook")
rulebook.pdf.attach(io: File.open("path/to/rulebook.pdf"), filename: "rulebook.pdf")
```

## Game Formats

Default formats included:

| Format | Points | Lords | Heroes | Core Min |
|--------|--------|-------|--------|----------|
| Skirmish | 500 | 0% | 50% | 25% |
| Border Patrol | 750 | 0% | 50% | 25% |
| Standard | 2000 | 25% | 25% | 25% |
| Grand Battle | 3000 | 25% | 25% | 25% |
| Apocalypse | 5000 | 25% | 25% | 25% |

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Related Resources

- [6th.whfb.app](https://6th.whfb.app/) - Online rules index for 6th Edition
- [Warhammer Fantasy Lexicanum](https://whfb.lexicanum.com/)

## Legal Notice

This is a fan project. Warhammer Fantasy is a trademark of Games Workshop Ltd.
This site is not affiliated with Games Workshop.

All rules content belongs to Games Workshop. This archive is intended for personal use
and preservation of out-of-print gaming materials.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
