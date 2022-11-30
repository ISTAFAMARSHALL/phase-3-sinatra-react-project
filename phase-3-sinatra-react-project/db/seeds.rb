puts "🌱 Seeding spices..."

# Seed your database here

Genre.create(name: "Shooters (FPS and TPS)")
Genre.create(name: "Role-playing (RPG, ARPG, and More)")
Genre.create(name: "Simulation and sports")
Genre.create(name: "Action-adventure")
Genre.create(name: "Fighting")
Genre.create(name: "Unassigned")

Game.create(name: "Call of Duty Modern Warfare", genre_id: 1, platinum: "false", score:4, completion_percentage: 100)
Game.create(name: "Call of Duty Modern Warfare II", genre_id: 1, platinum: "false", score:4, completion_percentage: 100)
Game.create(name: "Final Fantasy VII", genre_id: 2, platinum: "True", score:5, completion_percentage: 100)
Game.create(name: "Final Fantasy XVI", genre_id: 2, platinum:"false", score:0)
Game.create(name: "Madden 2023", genre_id: 3, platinum: "false", score:3)
Game.create(name: "NBA 2K23 ", genre_id: 3, platinum: "false", score:0)
Game.create(name: "UNCHARTED™ The Nathan Drake Collection", genre_id: 4, platinum: "True", score:4, completion_percentage: 100)
Game.create(name: "God of War (2018)", genre_id: 4, platinum: "True", score:5, completion_percentage: 100)
Game.create(name: "God of War Ragnarök", genre_id: 4, platinum: "false", score:5, completion_percentage: 30)
Game.create(name: "Street Fighter V: Champion Edition", genre_id: 5, platinum: "false", score:5, completion_percentage: 100)
Game.create(name: "Street Fighter 6", genre_id: 5, platinum: "false", score:0)
Game.create(name: "Tekken 7", genre_id: 5, platinum: "True", score:5, completion_percentage: 100)
Game.create(name: "Tekken 8", genre_id: 5, platinum: "false", score:0)
Game.create(name: "Guitar Hero", genre_id: 6, platinum: "false", score:0)

puts "✅ Done seeding!"
