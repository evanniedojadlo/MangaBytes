class CreateMangas < ActiveRecord::Migration
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :image
      t.date :start_publish_date
      t.date :end_publish_date
      t.string :state
      t.timestamps
    end
      add_index :mangas, :title
      add_index :mangas, :start_publish_date
      add_index :mangas, :end_publish_date
  end
end