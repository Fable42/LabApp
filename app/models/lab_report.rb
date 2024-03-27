class LabReport < ApplicationRecord
  has_one :user

  validates :description, length: { maximum: 250 }
  validates :title, presence: true, length: { maximum: 500 }
end
