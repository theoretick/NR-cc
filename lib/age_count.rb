#!/usr/bin/env ruby

require 'bundler/setup'

#---------------------------------------
  # - opens each file from ARGV
  # - traverse each line of files to increment counts per age
  # - zip totals
  # - puts zipped totals
#---------------------------------------
class AgeCount

  attr_reader :age_table

  def initialize
    @age_table = Array.new(100, 0)
    sum_ages
    display_ages
  end

  # builds @age_table by parsing each line of ARGV
  # - @age_table format: { age => age_count, ... }
  def sum_ages
    ARGF.each do |in_line|
      sum_age(in_line)
    end
  end

  # parses in_line to increment +1 on user_age entry
  def sum_age(in_line)
    user_id, raw_age = in_line.split(',')
    user_age         = raw_age.to_i #quick_strip trailing '\n'

    @age_table[user_age] += 1
  end

  # outputs ages with their aggregated counts
  # - aggregates ages as array of 2-item tuples: [age, age_count]
  # returns array of tuples
  def display_ages
    @age_table.each_with_index do |age_count, age|
      puts "%i,%i" % [age, age_count] unless age_count == 0
    end
  end

end

