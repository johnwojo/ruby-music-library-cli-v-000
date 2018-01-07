class MusicLibraryController

  def initialize(path = "./db/mp3s")
    music_importer = MusicImporter.new(path)
    music_importer.import
  end

  def call
    puts "Welcome to your music library!"
    puts "How can I help you today?"
    puts "To list all of your songs, enter 'list songs'."
    input = gets.chomp
  end
end
