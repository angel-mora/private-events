require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(username: 'Luis Miguel', email: 'luis@mi.com', password: 'admin123') }
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:email) }
  it { should have_many(:created_events) }
  it { should have_many(:attended_events) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a username' do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid if the username is not unique' do
    # other_already_exists = User.create(username: 'Luis Miguel', email: 'something@gmail.com', password: 'admin123')
    expect(subject).to_not be_valid # if other_already_exists
  end

  it 'is not valid if the email is not unique' do
    User.create(username: 'Someoneelse', email: 'luis@mi.com', password: 'admin123')
    expect(subject).to_not be_valid
  end

  it 'is valid if the username is unique' do
    User.create(username: 'Juan Perez', email: 'something@gmail.com', password: 'admin123')
    expect(subject).to be_valid
  end

  it 'is valid if the email is unique' do
    User.create(username: 'Someone', email: 'zack@alasguam.as', password: 'admin123')
    expect(subject).to be_valid
  end
end
