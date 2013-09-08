require 'solution'

describe "solution" do

  # these 2 can probably use the same data/output

  describe "initialization" do

    it 'should fail gracefully and do nothing with 0 args' do
      expect(AgeCount.new).not_to raise_error
    end

    it 'should accept 1 arg' do
      ARGV << 'data/mock_file1.csv'
      expect(AgeCount.new).not_to raise_error
    end

    # it 'should accept STDIN' do
      # expect().to eq()
    # end

    it 'should accept 2 args' do
      ARGV << 'data/mock_file1.csv'
      ARGV << 'data/mock_file2.csv'
      expect(AgeCount.new).not_to raise_error
    end

  end

  # describe "" do
  # end

end