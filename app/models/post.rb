class Post < ActiveRecord::Base
  belongs_to :stream
  has_many :images
  has_many :videos
end
