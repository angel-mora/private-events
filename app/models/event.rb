class Event < ApplicationRecord
  # validates :title, :description, presence: true
  # validates :title, presence: true # remove description trying to pass test
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  has_many :invitations
  has_many :attendees, through: :invitations, source: :user

  scope :before_today, -> { where 'event_time < ?', Date.today }
  scope :to_come, -> { where 'event_time >= ?', Date.today }
end
