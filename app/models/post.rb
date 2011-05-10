class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  #has_many :images
  #has_many :videos
  
  #validates_presence_of :stream_id
end
