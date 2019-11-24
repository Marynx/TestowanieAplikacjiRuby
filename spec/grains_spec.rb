require_relative '../lib/grains'
describe Grains do
	describe ".square" do
	it "test_1" do
		expect(Grains.square(1)).to eq 1
	end
	
	it "test_2" do
		expect(Grains.square(2)).to eq 2
	end
	
	it "test_3" do
		expect(Grains.square(3)).to eq 4
	end
	
	it "test_4" do
		expect(Grains.square(4)).to eq 8
	end
	it "test_16" do
		expect(Grains.square(16)).to eq 32_768
	end
	it "test_32" do
		expect(Grains.square(32)).to eq 2_147_483_648
	end
	
	it "test_64" do
		expect(Grains.square(64)).to eq 9_223_372_036_854_775_808
	end
	
	it "test_square_0_raises_an_exception" do
		expect { Grains.square(0) }.to raise_error(ArgumentError)
	end
	
	it "test_negative_square_raises_an_exception" do
		expect { Grains.square(-1) }.to raise_error(ArgumentError)
	end
	
	it "test_square_greater_than_64_raises_an_exception" do
		expect { Grains.square(65) }.to raise_error(ArgumentError)
	end
	
end

describe ".total" do
	it "test_returns_the_total_number_of_grains_on_the_board" do
		expect(Grains.total).to eq 18_446_744_073_709_551_615
	end
end
end