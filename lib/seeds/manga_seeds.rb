class MangaSeeds 
	IMPORTS_MANGAS = %w{ 

".hack//sign",
"Bleach"
"Dragon Ball",
"Hunter X Hunter", 
"Naruto",
"One Piece", 
"Karate Shoukoushi Kohinata Minoru",
"Ragnarok",
"Ranma 1/2","Sword Art Online",

}

	def self.seed_mangas
		IMPORTS_MANGAS.each do |manga|
			Manga.delete_all
			Manga.create(title: manga, image: File.open("#{Rails.root}/spec/files/cute-kitten-playing.jpg"))
		end
	end

end