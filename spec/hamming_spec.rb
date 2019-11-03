require_relative '../lib/hamming'
describe Hamming do
	it "test_empty_strands" do
		expect(Hamming.compute('', '')).to eq 0
	end
	
	it "test_single_letter_identical_strands" do
		expect(Hamming.compute('A', 'A')).to eq 0
	end
	
	it "test_single_letter_different_strands" do
		expect(Hamming.compute('G', 'T')).to eq 1
	end
	
	it "test_long_identical_strands" do
		expect(Hamming.compute('GGACTGAAATCTG', 'GGACTGAAATCTG')).to eq 0
	end
	it "test_long_different_strands" do
		expect(Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')).to eq 9
	end
	it "test_disallow_first_strand_longer" do
		expect { Hamming.compute('AATG', 'AAA') }.to raise_error(ArgumentError)
	end
	it "test_disallow_second_strand_longer" do
		expect { Hamming.compute('ATA', 'AGTG') }.to raise_error(ArgumentError)
	end
end