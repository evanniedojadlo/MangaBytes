class CreateMangaGenres < ActiveRecord::Migration
  def change
    create_table :manga_genres do |t|
      t.integer :manga_id
      t.integer :genre_id

      t.timestamps
    end
    add_index :manga_genres, [:manga_id, :genre_id]
  end
end
