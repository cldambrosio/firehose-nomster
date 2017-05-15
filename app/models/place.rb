class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :address, :description, presence: true
end
