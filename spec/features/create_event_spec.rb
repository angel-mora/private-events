require 'rails_helper'

RSpec.describe Event, type: :feature do

  let(:user) { User.create(username: username, email: email)}
  let(:username) {'Zandra Bogan'}
  let(:email) { 'malinda@wolff.io'}
  let(:password) { 'admin123'}

  before do
    visit login_path
  end

  context 'user not logged-in' do
    before do
      fill_in 'session_email', with: :email
      fill_in 'session_password', with: :password
      click_button 'Log in'
    end
  end
  scenario 'valid inputs' do
    visit new_event_path
    # fill_in 'event_title', with: 'Testing Title'
    # click_on 'Submit your event'
    # visit events_path
    expect(page).to have_content('Event Title')
  end
end
