class User < ApplicationRecord
  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :invitations
  has_many :attended_events, through: :invitations, source: :event

  has_secure_password

  before_save { self.email = email.downcase }
  validates :username, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }
end
