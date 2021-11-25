require 'pry'
require_relative '../lib/concerns/memorable'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  @@songs = []

  # def initialize
  #   # self.class.all << self # @@songs << self
  # end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
