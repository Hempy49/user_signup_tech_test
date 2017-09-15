require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "A new user can sign up" do
    expect { sign_up }.to change(User, :count).by(1)
  end

  describe "Blank fields" do
    scenario "Username field cannot be blank" do
      expect { sign_up(username: nil) }.to_not change(User, :count)
    end

    scenario "Email field cannot be blank" do
      expect { sign_up(email: nil) }.to_not change(User, :count)
    end

    scenario "Email must be correctly formatted" do
      expect { sign_up(email: "not a valid email") }.to_not change(User, :count)
    end
  end

  describe "Duplicate details" do
    scenario "Email address must be unique" do
      @user = User.create(username: 'Tom', email: 'Tom@fakegmail.com',
      address: '40 The Street', tel_no: '123456789')
      expect { sign_up }.to_not change(User, :count)
    end
  end
end
