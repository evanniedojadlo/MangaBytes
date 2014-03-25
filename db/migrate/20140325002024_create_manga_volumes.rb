class CreateMangaVolumes < ActiveRecord::Migration
  def change
    create_table :manga_volumes do |t|
			t.string :authors
			t.datetime :publish_date

			t.references :manga    	


      t.timestamps
    end
  end
end
