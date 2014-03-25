class Manga::VolumeImage < ActiveRecord::Base

	belongs_to :volume, class_name: "Manga::Volume"

	mount_uploader :image, MangaVolumeImageUploader

end
