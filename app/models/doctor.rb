class Doctor < ApplicationRecord
  has_many :case_assignments
  has_many :patients
  validates :first_name, :last_name, :adress, :zip_code, :city, :country, :description, :email, :phone_number, :specialty, :RPPS, presence: true
end
