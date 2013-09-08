require 'age_count'

describe "age_count" do

  describe "initialization" do

    it 'should accept 1 arg' do
      ARGV << 'data/mock_file1.csv'
      expect(AgeCount.new).not_to raise_error
    end

    it 'should accept 1 arg from shell' do
      expect(`./age_count.rb data/tiny_mock_file0.csv`).to eq(
        "68,1\n62,1\n30,1\n55,1\n21,1\n")
    end

    it 'should accept STDIN' do
      expect(`cat data/tiny_mock_file0.csv | ./age_count.rb`).to eq(
        "68,1\n62,1\n30,1\n55,1\n21,1\n")
    end

    it 'should accept 2 args' do
      ARGV << 'data/mock_file1.csv'
      ARGV << 'data/mock_file2.csv'
      expect(AgeCount.new).not_to raise_error
    end

  end

  # describe "" do
  # end

end