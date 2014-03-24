class Volume_Image < ActiveRecord::Base

	belongs_to :genre
	belongs_to :manga
	belongs_to :volume

	has_many :volume_ids
	has_many :images

end