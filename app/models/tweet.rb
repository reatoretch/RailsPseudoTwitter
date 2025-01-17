class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :upload_file
  
  validates :user, presence: true
  validates :content, presence: true, length: { in: 1..140 }
  
  default_scope -> { order(created_at: :desc) }
end
