#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

number = ARGV[0].to_i
fail "Please provide a number between 1 and 4999" unless (1..4999).include?(number)

doc = Nokogiri::HTML(open("http://www.miniwebtool.com/roman-numerals-converter/?number=#{number}"))
doc.css('tr.tr1.p_1 td:nth-child(2)').each do |td|
  puts td.content
end