class Manga::Volume < ActiveRecord::Base

	belongs_to :manga

	has_many :images, class_name: "Manga::VolumeImage", foreign_key: :manga_volume_id 

end
