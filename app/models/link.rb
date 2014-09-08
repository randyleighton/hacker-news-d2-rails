class Link < ActiveRecord::Base

  has_many :votes
  has_many :comments
  has_many :points
  belongs_to :user

  validates :name, presence: true

end
