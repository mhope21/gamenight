# Overview
Welcome to the Game Night App! This application helps you manage your game collection and suggests a random game to play. When a game is selected, it’s marked as played. Once all games have been played, the app resets the status so you can start fresh. Perfect for ensuring you never run out of fun!

## Features
Game Management: Add, edit, and delete games in your collection.

Random Game Selection: Suggests a random unplayed game to keep things exciting.

Status Tracking: Tracks games that have been played and resets once all games are played.

Image Support: Attach images to your games for a visually appealing collection.

YouTube Integration: Embed instructional videos to guide you through the gameplay.

## Installation
Clone the repository:

bash

Copy
git clone https://github.com/yourusername/gamenight.git
cd gamenight
Install dependencies:

bash

Copy
bundle install
yarn install
Set up the database:

bash

Copy
rails db:create
rails db:migrate
rails db:seed
Start the server:

bash

Copy
rails s

## Usage
Add Games: Go to the "Add New Game" section to add games to your collection.

View Games: Browse all your games in the "Show All Games" section.

Random Game: Use the "Random Game" feature to get a random game suggestion.

Instructional Videos: Watch embedded YouTube videos for game instructions.

## Gif of the Application
![Application Demo](https://raw.githubusercontent.com/mhope21/gamenight/main/app/assets/images/GameNight.gif)


## Future Enhancements
Increase Scale: Scale the app for multiple users.

User Accounts: Implement user authentication for personalized game collections.

Advanced Recommendations: Use machine learning to suggest games based on preferences.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

## License
This project is licensed under the MIT License.
