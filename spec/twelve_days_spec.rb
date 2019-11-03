require_relative '../lib/twelve_days'
describe TwelveDays do
	it "test_the_whole_song" do
		song_file = File.expand_path('../../lib/song.txt', __FILE__)
		expected = IO.read(song_file)
		expect(TwelveDays.song).to eq expected
	end
end