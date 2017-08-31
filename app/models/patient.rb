class Patient < ApplicationRecord
  # enum pour les listes de choix dans le formulaire
  enum gender: ["Une femme", "Un homme"]
  enum relative: ["aucun", "Père", "Mère", "Grand Père", "Grand Mère"]
  enum country: ["France", "Etranger"]
  enum status: ["started", "ended", "payment_failed", "payment_successful", "assigned", "answered", "opened"]

  has_many :messages
  has_many :case_assignments
  has_attachments :photos, minimum: 3, maximum: 4
  has_attachments :documents, maximum: 3

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 15, less_than_or_equal_to: 28 }
  validates :loss_start_date, presence: true
  validates :relative, presence: true
  validates :weekly_shampoo, presence: true
  validates :dandruff, presence: true
  validates :greasy_hair, presence: true
  validates :refined_hair, presence: true
  validates :brushing_hair, presence: true
  validates :shaving_hair, presence: true
  validates :scalp_density, presence: true
  validates :hair_thickness, presence: true
  validates :hair_color, presence: true
  validates :hair_type, presence: true
  validates :vitamines, presence: true
  validates :finasteride, presence: true
  validates :stage, presence: true
  validates :traction_test, presence: true
  validates :restore_area, presence: true
  validates :technical_preference, presence: true
  validates :status, presence: true
  validates :email, format: { with: /\A.*@.*\.[a-z]{2,}\z/ }, presence: true
  validates :minoxidil, presence: true
  validates :minoxidil_doses, presence: true, if: :minoxidil?
  validates :hair_transplant, presence: true
  validates :hair_transplant_technic, presence: true, if: :hair_transplant?
end
