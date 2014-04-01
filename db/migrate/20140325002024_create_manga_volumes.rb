class CreateMangaVolumes < ActiveRecord::Migration
  def change
    create_table :manga_volumes do |t|
			t.string :authors
			t.datetime :publish_date
			t.string :volume_name
			t.string :volume_number
			t.references :manga    	


      t.timestamps
    end
  end
end
