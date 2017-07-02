require 'pry'

class Song

  extend Memorable
  extend Findable
  # extend Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end


  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.all
    @@songs
  end
end
