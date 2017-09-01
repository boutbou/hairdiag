class DoctorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(doctor)
    @doctor = doctor

    mail(to: @doctor.email, subject: 'Welcome to Hairdiag')

  end
end
