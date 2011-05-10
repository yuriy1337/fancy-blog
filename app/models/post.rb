class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :images
  has_many :videos
  
  attr_accessor :tag_list
end
