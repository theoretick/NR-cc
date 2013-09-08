
#---------------------------------
# utility for generating mock-data for AgeCount
#---------------------------------

FILENAMES = [
  'data/mock_file1.csv',
  'data/mock_file2.csv',
  ]

# how many records to generate for each file
RECORD_COUNT = 10000

def mocker

  FILENAMES.each do |filename|
    f = File.open(filename, 'w')

    RECORD_COUNT.times do
      # TODO: modify to guarantee user_id uniqueness
      mock_user_id  = Random.rand(2000).to_s
      mock_user_age = Random.rand(80).to_s
      mock_line     = mock_user_id + ',' + mock_user_age

      f.puts mock_line
    end

    f.close
  end

end

# run it!
mocker