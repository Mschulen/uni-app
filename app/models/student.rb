class Student < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {minimum: 10, maximum: 40}, 
                                    uniqueness: {case_sensitive: false},
                                    format: { with: VALID_EMAIL_REGEX }
end