require_relative '../lib/high_scores'
describe HighScores do
	it "test_list_of_scores" do
		scores = [30, 50, 20, 70]
		expect(HighScores.new(scores).scores).to eq [30, 50, 20, 70]
	end
	it "test_latest_score" do
	    scores = [100, 0, 90, 30]
		expect(HighScores.new(scores).latest).to eq 30
	end
	it "test_personal_best" do
	    scores = [40, 100, 70]
		expect(HighScores.new(scores).personal_best).to eq 100
	end
		it "test_personal_top_three_from_a_list_of_scores" do
		scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]
		expect(HighScores.new(scores).personal_top_three).to eq [100, 90, 70]
	end
		it "test_personal_top_highest_to_lowest" do
		scores = [20, 10, 30]
		expect(HighScores.new(scores).personal_top_three).to eq [30, 20, 10]
	end
		it "test_personal_top_when_there_is_a_tie" do
		scores = [40, 20, 40, 30]
		expect(HighScores.new(scores).personal_top_three).to eq [40, 40, 30]
	end
		it "test_personal_top_when_there_are_less_than_3" do
		scores = [30, 70]
		expect(HighScores.new(scores).personal_top_three).to eq [70, 30]
	end
		it "test_personal_top_when_there_is_only_one" do
		scores = [40]
		expect(HighScores.new(scores).personal_top_three).to eq [40]
	end
		it "test_latest_score_is_not_the_personal_best" do
		scores = [100, 40, 10, 70]
		expect(HighScores.new(scores).latest_is_personal_best?).to eq false
	end
		it "test_latest_score_is_the_personal_best" do
		scores = [70, 40, 10, 100]
		expect(HighScores.new(scores).latest_is_personal_best?).to eq true
	end
end