require 'rails_helper'

RSpec.describe Invitation, type: :model do
  let(:event) do
    Event.create(
      title: 'This is a Title',
      description: 'Hello World!',
      event_time: Time.now,
      creator_id: user_1.id
    )
  end

  let(:user_1) do
    User.create(
      username: 'Juan Gabriel',
      email: 'juan@gabriel.com',
      password: 'admin123'
    )
  end

  let(:user_2) do
    User.create(
      username: 'Luis Miguel',
      email: 'luis@miguel.com',
      password: 'admin123'
    )
  end

  subject { Invitation.new(event_id: event.id, user_id: user_1.id) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is valid if the foreign key is unique' do
    Invitation.create(event_id: event.id, user_id: user_2.id)
    expect(subject).to be_valid
  end
end
