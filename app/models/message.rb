class Message < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :text, presence: true
  validates :image, presence: true
end
