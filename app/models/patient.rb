class Patient < ApplicationRecord
  has_many :messages
  has_many :case_assignments
  validates :first_name, :last_name, :gender, :zip_code, :city, :country, :age, :loss_start_date, :relative, :weekly_shampoo, :dandruff, :greasy_hair, :refined_hair, :brushing_hair, :shaving_hair, :scalp_density, :hair_thickness, :hair_color, :hair_type, :vitamines, :minoxidil, :minoxidil_doses, :finasteride, :hair_transplant, :hair_transplant_technic, :stage, :traction_test, :restore_area, :technical_preference, :status, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true
end
