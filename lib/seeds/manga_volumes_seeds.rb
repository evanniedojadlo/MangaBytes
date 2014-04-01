class MangaVolumesSeeds 

	def self.seed_volumes
		image_dir = "/Users/RAI/Desktop/hacksignLegendofTwilight"
		manga = Manga.first

		volume = Manga::Volume.create(authors: "Joss Wedon, Santa Clause", volume_name: "test", volume_number: "103", publish_date: Time.now, manga_id: manga.id)

		i = 0
		Dir.foreach(image_dir) do |file|
			next if file == '.' or file == '..'
			Manga::VolumeImage.create(manga_volume_id: volume.id, display_order: i, image: File.open("#{image_dir}/#{file}") )
			i += 1
		end

	end

end