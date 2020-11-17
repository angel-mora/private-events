class Event < ApplicationRecord
  has_many :attendees, class_name: 'User'
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  validates :title, presence: true
end
