class Message < ApplicationRecord
  # validates :user_id, presence: true
  # validates :group_id, presence: true
  # validates :start_date, presence: true
  #   validates :end_date, presence: true
  
  belongs_to :group
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :content, presence: true, unless: :image?
end
