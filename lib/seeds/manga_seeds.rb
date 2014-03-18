require 'csv'
class MangaSeeds 

	def self.seed_mangas
		Manga.destroy_all
		FileUtils.rm_rf("#{Rails.root}/public/uploads")
		file = "#{Rails.root}/spec/files/csv/mb_data.csv"
		CSV.foreach(file, headers: true) do |row| 
			image = "#{Rails.root}/spec/files/images/#{row['Image']}"
			Manga.create(title: row['Titles'], image: File.open(image))
		end
	end

end