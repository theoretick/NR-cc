
#---------------------------------
# utility for generating mock-data for AgeCount
#---------------------------------

FILENAMES = [
  'data/mock_file1.csv',
  'data/mock_file2.csv',
  ]

# how many records to generate for each file
RECORD_COUNT = 500_000

def mocker

  mock_user_id = 1

  FILENAMES.each do |filename|
    f = File.open(filename, 'w')

    RECORD_COUNT.times do
      mock_user_id  += 1
      mock_user_age = Random.rand(18..80)

      f.puts "#{mock_user_id},#{mock_user_age}"
    end

    f.close
  end

end

# run it!
mocker