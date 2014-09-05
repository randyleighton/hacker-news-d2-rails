class Link < ActiveRecord::Base
  has_many :votes
  has_many :comments
  has_many :points
end
