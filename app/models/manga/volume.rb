class Manga::Volume < ActiveRecord::Base

	belongs_to :manga

	has_many :volume_images, class_name: "Manga::VolumeImage", foreign_key: :manga_volume_id 

end
