require 'rails_helper'

RSpec.describe Event, type: :feature do
  let(:user) { User.create(username: username, email: email) }
  let(:username) { 'Zandra Bogan' }
  let(:email) { 'malinda@wolff.io' }
  let(:password) { 'admin123' }

  before do
    visit login_path
  end

  scenario 'user not logged-in' do
    fill_in 'session_email', with: :email
    fill_in 'session_password', with: :password
    click_button 'Log in'
  end
end
