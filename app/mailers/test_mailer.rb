class TestMailer < ActionMailer::Base

  def message
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'hagegebenjamin@gmail.com',
      :from => 'contact@hairdiag.com',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end
