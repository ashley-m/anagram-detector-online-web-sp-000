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
    binding.pry
    m.flatten!(1) if m.any? {|z| z.is_a?(Array)}
    m.each {|f| f.join}
    m
  end
end
