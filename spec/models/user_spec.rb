require 'rails_helper'

describe User do

  it { should validate_uniqueness_of :email }
  it { should have_many :links }
  it { should have_many(:votes).through(:links)}

end
