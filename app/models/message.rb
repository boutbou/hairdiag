class Message < ApplicationRecord
  belongs_to :patient
  validates :subject, length: { minimum: 5 }, presence: true
  validates :content, length: { minimum: 50 }, presence: true

  after_create :send_answer_email

  private

  def send_answer_email
    DoctorMailer.new_message(self.patient, self.patient.doctor_id).deliver_now
  end

end
