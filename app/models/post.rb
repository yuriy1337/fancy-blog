class Post < ActiveRecord::Base
  belongs_to :stream
  has_many :images
  has_many :videos
  
  #validates_presence_of :stream_id
end
