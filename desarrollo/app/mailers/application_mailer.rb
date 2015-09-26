class ApplicationMailer < ActionMailer::Base
  default from: "ccaychot2@gmail.com"
  layout 'mailer'
  
  http://codehero.co/ruby-rails-desde-cero-enviar-emails-actionmailer
  
  def bienvenido_email(user)
  @user = user
  @url  = 'http://codeHero.co'
  mail(to: @user.email, subject: 'Aprende a programar con nuestros cursos gratis')
  end


end
