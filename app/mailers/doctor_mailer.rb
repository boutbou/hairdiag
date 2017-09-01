class DoctorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(doctor)
    @doctor = doctor
    mail(
      subject: 'Welcome to Hairdiag',
      to: @doctor.email,
      track_opens: 'true'
      )
  end

  def new_message(patient, doctor)
    @patient = patient
    @doctor = doctor
    mail(
      subject: 'You received an answer from your dermatologist',
      to: @patient.email,
      from: 'contact@hairdiag.com',
      track_opens: 'true'
      )
  end
end
