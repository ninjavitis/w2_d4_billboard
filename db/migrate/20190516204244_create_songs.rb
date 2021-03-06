class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :album
      t.string :year
      t.string :image
      t.belongs_to :artist, foreign_key: true

      t.timestamps
    end
  end
end
