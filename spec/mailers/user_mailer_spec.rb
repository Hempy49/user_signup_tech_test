require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe 'signup_confirmation' do
    let(:user) { User.new(username: "Simon", email: "simon@email.com", password: "123", password_confirmation: "123") }
    let(:mail) { described_class.signup_confirmation(user).deliver_now }

    it 'can send an email' do
      expect { mail }.to change { ActionMailer::Base.deliveries.count }.by(1)
    end

    it 'renders the subject' do
      expect(mail.subject).to eq('Sign up confirmation')
    end
    
    it 'renders the receiver email' do
      expect(mail.to).to eq([user.email])
    end

    it 'renders the sender email' do
      expect(mail.from).to eq(['no_reply@mail.com'])
    end

    it 'confirms username in body of message' do
      expect(mail.body).to include('Username: Simon')
    end
  end
end
