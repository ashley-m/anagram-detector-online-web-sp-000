# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :letters
  def initialize(word)
    @letters = word.split("")
    @letters.sort!
  end

  def match(text)
    letarray = []
    m = []
    text.each {|x| letarray << x.split("")}
    #binding.pry
    m << letarray.select {|y| y.sort==@letters}
    m.flatten!(1) if m.any? {|z| z.is_a?(Array)}
    m.select {|f| f.join if f.is_a?(Array)}
    binding.pry
    m
  end
end
