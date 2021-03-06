class Product < ApplicationRecord
  belongs_to :client
  belongs_to :material
  belongs_to :user
  has_one :production_datum
  has_one :inspection_datum
  has_one :evaluation_datum

  validates :number, presence: true, uniqueness: true, length: { is: 6 }, format: { with: /\A[0-9]{6}\z/ }
  validates :length, presence: true
  validates :width, presence: true
end
