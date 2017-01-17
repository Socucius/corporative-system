class Employee < ApplicationRecord
  extend Enumerize
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :rememberable, :validatable
  enumerize :role, in: [:user, :admin], default: :user

  validates :first_name, :last_name, :role, presence: true
end
