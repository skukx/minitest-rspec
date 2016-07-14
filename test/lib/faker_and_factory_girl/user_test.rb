#require 'test_helper'
require 'faker'
require 'spec_helper'
require 'factory_girl_rails'
require 'rspec-its'

module FakerAndFactoryGirl
  describe User do
    let(:user) # Using let creates the user object when it needs to be used
      FactoryGirl.build(:user)
      # Overide attributes FactoryGirl.build(:user, first_name: 'Nightman')

      its(:user_email) { is_expected.to eql user_email }
      its(:first_name) { is_expected.to eql first_name }
      its(:last_name) { is_expected.to eql last_name}
      its(:password) { is_expected.to eql password }
  end
end

#FactoryGirl.build(:admin)   # Returns, but doesn't save, an instance of User

#FactoryGirl.create(:admin) # Creates and saves an instance of User, and returns the saved instance

#FactoryGirl.attributes_for(:admin) # Returns a hash of attributes that can be used to build a valid User instance

#FactoryGirl.build_stubbed(:admin) # Returns an object with all defined attributes stubbed out
