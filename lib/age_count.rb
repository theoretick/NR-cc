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

  def initialize; end

  def run
    @age_table = Hash.new{0}
    sum_ages
    aggregate_ages
  end

  # builds @age_table for each line of ARGV
  # - @age_table format: {..., age => age_count, ...}
  # returns 0
  def sum_ages
    ARGF.each do |in_line|
      sum_age(in_line)
    end
  end

  # parses in_line to increment user_age by 1
  # returns 0.
  def sum_age(in_line)
    user_id, raw_user_age = in_line.split(',')
    # quick-strip of trailing '\n' w/ #to_i
    user_age = raw_user_age.to_i #quick_strip trailing '\n'
    @age_table[user_age] += 1
  end

  # outputs ages with their aggregated counts
  # - aggregates ages as array of 2-item tuples: [age, age_count]
  # returns array of tuples
  def aggregate_ages
    # p *@age_table
    @age_table.each_pair do |age, age_count|
      puts "%i,%i" % [age, age_count]
    end
  end

end

