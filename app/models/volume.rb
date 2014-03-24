class Volume < ActiveRecord::Base

	belongs_to :genre
	belongs_to :manga

	has_many :volume_ids
	has_many :descriptions
	has_many :publish_dates
	has_many :authors
end