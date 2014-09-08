require 'rails_helper'

describe Link do

  it { should have_many :votes }
  it { should have_many :comments }
  it { should have_many :points }
  it { should belong_to :user }

  it { should validate_presence_of :name }
  it { should validate_presence_of :url }

end
