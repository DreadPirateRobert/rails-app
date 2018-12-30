class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  has_secure_password
  #validates FILL_IN, presence: true    # Replace FILL_IN with the right code.
  #validates FILL_IN, presence: true    # Replace FILL_IN with the right code.
  def feed
    Micropost.where("user_id = ?", id)
  end

end
