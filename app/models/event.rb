class Event < ApplicationRecord
  validates :title, :description, presence: true

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  has_many :attendees, through: :invitations, source: :user

end
