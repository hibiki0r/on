class Event < ActiveRecord::Base
  has_many :users_events
  # has_many :users, through: :user_events
  belongs_to :user
  has_many :paticipants, through: :user_events, source: :user

  has_many :comments
  mount_uploader :image, ImageUploader
end
