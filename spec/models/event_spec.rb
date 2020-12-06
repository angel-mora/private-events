require 'rails_helper'

RSpec.describe Event, type: :model do
  scenario 'valid inputs' do
    visit new_event_path
    fill_in 'Event title', with: 'Testing Title'
    click_on 'Submit your event'
    visit events_path
    expect(page).to have_content('Testing Title')
  end
end
