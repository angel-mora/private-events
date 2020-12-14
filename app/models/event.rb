class Event < ApplicationRecord
  validates :title, :description, :event_time, presence: true, uniqueness: true
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  has_many :invitations
  has_many :attendees, through: :invitations, source: :user

  scope :before_today, -> { where 'event_time < ?', Date.today }
  scope :to_come, -> { where 'event_time >= ?', Date.today }
end
