class MusicLibraryController

  def initialize(path = "./db/mp3s")
    music_importer = MusicImporter.new(path)
    music_importer.import
  end

  def call
    puts "Welcome, heifer."
    puts "Gimme some input, bro."
    gets.input
end
