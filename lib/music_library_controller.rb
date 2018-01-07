require 'pry'
class MusicLibraryController

  def initialize(path = "./db/mp3s")
    music_importer = MusicImporter.new(path)
    music_importer.import
  end

  def call
    input = "place_holder"
    until input == "exit"
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    input = gets.strip
    if input == 'list songs'
      self.list_songs

    elsif input == 'list artists'
      self.list_artists

    elsif input == 'list genres'
      self.list_genres

    elsif input == 'list artist'
      self.list_songs_by_artist

    elsif input == 'list genre'
      self.list_songs_by_genre

    elsif input == 'play song'
      self.play_song
      end
    end
  end


  def list_songs
    index = 1
    Song.all.sort {|a,b| a.name <=> b.name}.each {|song|
    puts "#{index}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    index += 1}
  end

  def list_artists
    index = 1
    Artist.all.sort {|a,b| a.name <=> b.name}.each {|artist|
    puts "#{index}. #{artist.name}"
    index += 1}
  end

  def list_genres
    index = 1
    Genre.all.sort {|a,b| a.name <=> b.name}.each {|genre|
    puts "#{index}. #{genre.name}"
    index += 1}
  end

  def list_songs_by_artist
    puts "Please enter the name of an artist:"
    input = gets.strip
    input.songs
  end

  def list_songs_by_genre
    puts "Please enter the name of a genre:"
    input = gets.strip
  end

  def play_song
  end


end
