require_relative '../lib/resistor_color_duo'
describe ResistorColorDuo do
	describe ".value" do
	it "test_brown_and_black" do
		expect(ResistorColorDuo.value(["brown", "black"])).to eq 10
	end
	it "test_blue_and_grey" do
		expect(ResistorColorDuo.value(["blue", "grey"])).to eq 68
	end
	it "test_yellow_and_violet" do
		expect(ResistorColorDuo.value(["yellow", "violet"])).to eq 47
	end
	it "test_orange_and_orange" do
		expect(ResistorColorDuo.value(["orange", "orange"])).to eq 33
	end
	it "test_ignore_additional_colors" do
		expect(ResistorColorDuo.value(["green", "brown", "orange"])).to eq 51
  end
end
end