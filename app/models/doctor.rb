class Doctor < ApplicationRecord

  has_many :case_assignments
  has_many :patients
  validates :first_name, length: { minimum: 2 }, presence: true
  validates :last_name, length: { minimum: 2 }, presence: true
  validates :adress, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :description, length: { minimum: 20 }, presence: true
  validates :phone_number, uniqueness: true, presence: true
  validates :specialty, presence: true
  validates :RPPS, uniqueness: true, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def send_welcome_email
    DoctorMailer.welcome(self).deliver_now
  end

end
