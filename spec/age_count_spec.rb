require 'age_count'

describe "age_count" do

  describe "initialization" do

    it 'should accept 1 arg' do
      ARGV << 'data/mock_file1.csv'
      expect(AgeCount.new).to be_instance_of(AgeCount)
    end

    it 'should accept 1 arg from shell' do
      expect(`./age_count.rb data/tiny_mock_file0.csv`).to eq(
        "68,1\n62,1\n21,3\n30,2\n55,1\n")
    end

    it 'should accept STDIN' do
      expect(`cat data/tiny_mock_file0.csv | ./age_count.rb`).to eq(
        "68,1\n62,1\n21,3\n30,2\n55,1\n")
    end

    it 'should accept 2 args' do
      ARGV << 'data/mock_file1.csv'
      ARGV << 'data/mock_file2.csv'
      expect(AgeCount.new).to be_instance_of(AgeCount)
    end

  end

  describe "analyze tiny_mock_file0" do

    before(:each) do
      ARGV << 'data/tiny_mock_file0.csv'
      ages_for_tiny_mock = AgeCount.new
      @table = ages_for_tiny_mock.age_table
    end

    it 'should find 3 21-year-olds' do
      expect(@table[21]).to eq(3)
    end

    it 'should find 2 30-year-olds' do
      expect(@table[30]).to eq(2)
    end

  end


end