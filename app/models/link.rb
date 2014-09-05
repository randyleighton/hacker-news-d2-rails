class Link < ActiveRecord::Base
  has_many :votes
  has_many :comments
end
