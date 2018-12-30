class Micropost < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  default_scope -> { order(created_at: :desc) }
  validates :content, length: { maximum: 140 },
                      presence: true
end
