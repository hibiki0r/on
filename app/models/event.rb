class Event < ActiveRecord::Base
  has_many :users_events
  # has_many :users, through: :user_events
  belongs_to :user
  has_many :user_events
  has_many :users, through: :user_events

  has_many :comments
  mount_uploader :image, ImageUploader
end
