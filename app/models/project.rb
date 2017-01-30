class Project < ApplicationRecord
  extend Enumerize
  enumerize :status, in: [:new, :approved, :declined], default: :new, scope: true

  validates :name, :description, presence: true

  belongs_to :customer
end
