require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { Event.new(title: title, description: description, event_time: event_time, creator_id: User.first.id) }
  let!(:user) { User.create(username: username, email: email, password: password) }

  let(:username) { 'example_user' }
  let(:email) { 'user@example.com' }
  let(:password) { 'admin123' }
  let(:title) { 'Event Title' }
  let(:description) { 'Event Body, Hello guys' }
  let(:place) { 'Los Anglos' }
  let(:event_time) { Time.now }
  let(:creator_id) { user.id }

  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }
  it { should validate_presence_of(:description) }
  it { should belong_to(:creator) }
  it { should have_many(:attendees) }
  it { should have_many(:invitations) }
end
