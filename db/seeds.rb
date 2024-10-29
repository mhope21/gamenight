# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'

Game.destroy_all

games = [
  {
    name: 'Everdell',
    max_players: 4,
    playing_time: 90,
    description: 'A game of dynamic tableau building and worker placement in a charming forest setting.',
    already_played: false,
    image_path: 'db/seed_img/everdell.png'
  },
  {
    name: 'Chronicles of Crime',
    max_players: 4,
    playing_time: 60,
    description: 'A cooperative game of crime investigation, mixing VR experience and classic board game.',
    already_played: false,
    image_path: 'db/seed_img/crime.png'
  },
  {
    name: 'Catan',
    max_players: 4,
    playing_time: 75,
    description: 'Trade, build, and settle the island of Catan in this classic strategy game.',
    already_played: false,
    image_path: 'db/seed_img/catan.png'
  },
  {
    name: 'Raccoon Tycoon',
    max_players: 5,
    playing_time: 60,
    description: 'A game of commodity speculation, town development, and set collection.',
    already_played: false,
    image_path: 'db/seed_img/raccoon.png'
  },
  {
    name: 'Agricola Family Edition',
    max_players: 4,
    playing_time: 90,
    description: 'A simplified version of the classic farming game, perfect for families.',
    already_played: false,
    image_path: 'db/seed_img/agricola.png'
  }
]

games.each do |game_data|
  game = Game.create!(
    name: game_data[:name],
    max_players: game_data[:max_players],
    playing_time: game_data[:playing_time],
    description: game_data[:description],
    already_played: game_data[:already_played]
    )

    image_path = game_data[:image_path]
    game.image.attach(io: File.open(image_path), filename: "#{game_data[:name].parameterize}.png")
end
