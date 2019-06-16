class Doctor < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments
  has_and_belongs_to_many :specialties
  validates :name, :picture, presence: true, uniqueness: true
  validates :university, presence: true

end
