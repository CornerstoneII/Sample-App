class User < ApplicationRecord
    validates :name, :email, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :name, length: { maximum: 50 }
    validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
end
