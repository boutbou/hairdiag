class DoctorMailerPreview < ActionMailer::Preview
  def welcome
    doctor = Doctor.first
    DoctorMailer.welcome(doctor)
  end
end
