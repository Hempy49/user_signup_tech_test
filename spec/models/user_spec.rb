require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to be }
  describe User.new(username: "Jim", email: "jim@test.com",
  address: "4 The Street", tel_no: "123456789", password: "123", password_confirmation: "123") do
    it { is_expected.to have_attributes(:username => "Jim", :email => "jim@test.com",
      :address => "4 The Street", :tel_no => "123456789", :password => "123", :password_confirmation => "123") }
    end
  end
