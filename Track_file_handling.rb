
module Genre
  POP, CLASSIC, JAZZ, ROCK = *0..3
end

$genre_names = ['Pop', 'Classic', 'Jazz', 'Rock']

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

# Reads in and returns a single track from the given file

def get_track music_file
	track_name = music_file.gets()
	track_location = music_file.gets()
	Track.new(track_name, track_location)
end

# Reads in and returns an array of multiple tracks from the given file

def get_tracks music_file
	tracks = Array.new()
	count = music_file.gets().to_i
	index = 0
	while index < count
		track = get_track(music_file)
		tracks << track
		index += 1
	end
	tracks
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



# Reads in an array of albums from a file and then prints all the albums in the
# array to the terminal

def main
	a_file = File.new("input.txt", "r") # open for reading
	tracks = get_tracks(a_file)
	print_tracks(tracks)
end

main