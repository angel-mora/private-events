require 'rails_helper'

RSpec.describe Event, type: :feature do
  # before(:each) do
  #   assign(:session, Session.new)
  # end

  scenario 'valid inputs' do
    visit new_event_path
    fill_in 'event_title', with: 'Testing Title'
    click_on 'Submit your event'
    visit events_path
    expect(page).to have_content('Testing Title')
  end
end
