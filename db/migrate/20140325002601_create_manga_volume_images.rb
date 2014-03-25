class CreateMangaVolumeImages < ActiveRecord::Migration
  def change
    create_table :manga_volume_images do |t|
    	t.string :image
    	t.integer :display_order
    	t.integer :manga_volume_id

      t.timestamps
    end
  end
end
