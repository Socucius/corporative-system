class Customer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :confirmable, :validatable

  validates :first_name, :last_name, presence: true
end
