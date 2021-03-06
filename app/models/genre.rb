class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, :through => :song_genres
  has_many :artists, :through => :songs

  include Slug
  extend FindBySlug
  
=begin
  def slug
    self.name.downcase.gsub(/[^0-9a-z ]/, "").gsub(" ", "-") #first gsub removes all special characters except spaces, 0-9, and lowercase a-z
  end

  def self.find_by_slug(slug_to_find)
    self.all.find { |item| item.slug == slug_to_find }
  end
=end
end