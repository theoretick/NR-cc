
#
# + accepts 1+ paths as args
# + accepts STDIN
# ++ takes # of lines of comma-sep iUser_ID & iUser_Age
#
# - list of tuples -- [ age, user_count_of_age ], [...] , [...]
#

ARGF.each do |filename|
  puts filename
  # parse_file(filename)
end

# parses opened file to tally users with their ages
def parse_file(in_file)
  
end

# open each file
# traverse each file and add to totals
# zip totals
# print zipped totals
