class AddVideoUrlToGames < ActiveRecord::Migration[7.2]
  def change
    add_column :games, :video_url, :string
  end
end
