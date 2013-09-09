#!/usr/bin/env ruby

require 'bundler/setup'

#---------------------------------------
  # opens each file from ARGV
  # traverse each line of files to increment counts per age
  # zip totals
  # puts zipped totals
#---------------------------------------
class AgeCount

  attr_reader :age_table

  def run
    @age_table = Hash.new{0}

    ARGF.each do |in_line|
      sum_ages(in_line)
    end

    aggregate_ages
  end

  # Private: Parses in_line to increment user_age by 1
  # - Looks-up user_age key and increments val by 1
  # - builds @age_table hash with entries: 'age => age_count'
  #
  # returns 0.
  def sum_ages(in_line)
    user_id, raw_user_age = in_line.split(',')
    # quick-strip of trailing '\n' w/ #to_i
    user_age = raw_user_age.to_i
    @age_table[user_age] += 1
  end

  # Private: outputs ages with their aggregated counts
  # - aggregates ages as array of 2-item tuples: [age, age_count]
  # returns array of tuples
  def aggregate_ages
    # @age_table.each_pair do |age, count|
    #   puts "%i,%i" % [age, count]
    # end
    p *@age_table
  end

end
