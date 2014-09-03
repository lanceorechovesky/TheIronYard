class Location < ActiveRecord::Base
  has_many :user_locations
  has_many :users, through: :user_locations

  include Workflow 
  workflow do
    state :fresh do
      event :getting_picked, transitions_to: :picked
      event :rejecting, transitions_to: :rejected
    end
    state :picked do
      event :over_ride, transitions_to: :fresh
    end
    state :rejected do
      event :over_ride, transitions_to: :fresh
    end
  end

end
