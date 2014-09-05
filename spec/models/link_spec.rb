require 'rails_helper'

describe Link do

it { should have_many :votes }
it { should have_many :comments }
it { should have_many :points }

end
