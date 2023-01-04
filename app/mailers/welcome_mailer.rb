class WelcomeMailer < ApplicationMailer
  def send_welcome_mail
    mail(
      to:'anx450z@gmail.com', 
      from:"example.testing.web@gmail.com", 
      subject:'Test email', 
      message: 'This is a test email'
    )
  end
end
