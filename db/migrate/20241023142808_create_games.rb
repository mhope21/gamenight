class CreateGames < ActiveRecord::Migration[7.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :max_players
      t.integer :playing_time
      t.text :description
      t.boolean :already_played, default: false

      t.timestamps
    end
  end
end
