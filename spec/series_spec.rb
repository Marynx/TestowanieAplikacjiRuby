require_relative '../lib/series'
describe Series do
	it "test_simple_slices_of_one" do
		series = Series.new('01234')
		expect(series.slices(1)).to eq ['0', '1', '2', '3', '4']
	end
		it "test_simple_slices_of_two" do
	    series = Series.new('92834')
		expect(series.slices(1)).to eq ['9', '2', '8', '3', '4']
	end
	it "test_simple_slices_of_one_again" do
	    series = Series.new('01234')
		expect(series.slices(2)).to eq ['01', '12', '23', '34']
	end
	it "test_other_slices_of_two" do
		series = Series.new('98273463')
		expect(series.slices(2)).to eq ['98', '82', '27', '73', '34', '46', '63']
	end
	it "test_simple_slices_of_two_again" do
		series = Series.new('37103')
		expect(series.slices(2)).to eq ['37', '71', '10', '03']
	end
	it "test_simple_slices_of_three" do
		series = Series.new('01234')
		expect(series.slices(3)).to eq ['012', '123', '234']
	end
	it "test_simple_slices_of_three_again" do
		series = Series.new('31001')
		expect(series.slices(3)).to eq ['310', '100', '001']
	end
	it "test_other_slices_of_three" do
	series = Series.new('982347')
		expect(series.slices(3)).to eq ['982', '823', '234', '347']
	end
	it "test_simple_slices_of_four" do
		series = Series.new('01234')
		expect(series.slices(4)).to eq ['0123', '1234']
	end
	it "test_simple_slices_of_four_again" do
		series = Series.new('91274')
		expect(series.slices(4)).to eq ['9127', '1274']
	end
	it "test_simple_slices_of_five" do
		series = Series.new('01234')
		expect(series.slices(5)).to eq ['01234']
	end
	it "test_simple_slices_of_five_again" do
		series = Series.new('81228')
		expect(series.slices(5)).to eq ['81228']
	end
	it "test_simple_slice_that_blows_up" do
		series = Series.new('01234')
		expect { series.slices(6) }.to raise_error(ArgumentError)
	end
	it "test_more_complicated_slice_that_blows_up" do
		slice_string = '01032987583'
		series = Series.new(slice_string)
		expect { series.slices(slice_string.length + 1) }.to raise_error(ArgumentError)
	end
	it "test_sequential_slices" do
		series = Series.new('1234')
		expect(series.slices(2)).to eq ['12', '23', '34']
		expect(series.slices(3)).to eq ['123', '234']
	end
end