class Course < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum:30}, uniqueness: true
  validates :short_name, presence: true, length: {minimum: 3, maximum: 10}, uniqueness: true
  validates :description, presence: true, length: {minimum: 10, maximum: 200}  
end