class TwelveDays
    def self.song
        song_file = File.expand_path('../song.txt', __FILE__)
        songLyrics = IO.read(song_file)
        return songLyrics
    end
end

