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

  def new_message(patient_id)
    @patient = Patient.find(patient_id)
    @doctor = @patient.doctor
    mail(
      subject: "Vous avez reçu une réponse d'un dermatologue",
      to: @patient.email,
      from: 'contact@hairdiag.com',
      track_opens: 'true'
      )
  end
end
