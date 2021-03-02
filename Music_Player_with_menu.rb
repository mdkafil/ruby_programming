require './input_functions'

# NEEDS ADDED FUNCTIONALITY!!!

module Genre
  POP, CLASSIC, JAZZ, ROCK = *1..4
end

$genre_names = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']

class Track
	attr_accessor :name, :location

	def initialize (name, location)
		@name = name
		@location = location
	end
end

class Album
	attr_accessor :title, :artist, :genre, :tracks

	def initialize (title, artist, genre, tracks)
		@title = title
		@artist = artist
		@genre = genre
		@tracks = tracks
	end
end

# Reads in and returns a single track from the terminal

def read_track
	track_name = read_string('Enter Track Name: ')
	track_location = read_string('Enter Track location: ')
	Track.new(track_name, track_location)
end

# Reads in and returns an array of multiple tracks from the given file

def read_tracks
	tracks = Array.new()
	count = read_integer_in_range(" Enter number of tracks:", 1, 15)
	index = 0
	while index < count
		track = read_track()
		tracks << track
		index += 1
	end
	tracks
end

def read_genre()
  length = $genre_names.length
  index = 1
  while index < length
    puts "#{index} " + $genre_names[index]
    index += 1
  end
  read_integer_in_range("Enter a genre (1-4)", 1, 4)
end

# Reads in and returns a single album from the terminal, with all its tracks

def read_album
	album_title = read_string("Enter title: ")
	album_artist = read_string("Enter artist: ")
  album_genre = read_genre()
	tracks = read_tracks()
	album = Album.new(album_title, album_artist, album_genre, tracks)
	album
end

# reads in and returns an array of all the albums on the album file

def read_albums
  count = 1
	albums = Array.new
	index = 0
	while (index < count)
		album = read_album()
		albums << album
		index += 1
	end

	albums
end

# Takes and array of tracks and prints them to the terminal

def print_tracks tracks
	index = 0
	times = tracks.length
	while (index < times)
		puts tracks[index].name
		puts tracks[index].location
		index += 1
	end
end

# Takes a single album and prints it to the terminal

def print_album album
	puts album.title
	puts album.artist
	puts 'Genre is ' + album.genre.to_s
	puts $genre_names[album.genre]
	print_tracks(album.tracks)
end

# Takes an array of albums and prints them to the terminal

def print_albums albums
	times = albums.length
	index = 0
	while (index < times)
		print_album(albums[index])
		index += 1
	end
end

# Reads in an array of albums from a file and then prints all the albums in the
# array to the terminal

def main
  puts "Welcome to the music player"
	albums = read_albums()
	print_albums(albums)
end

main
