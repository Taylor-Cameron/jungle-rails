class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def order_email (user)
    @email = user.email
    @url  = 'localhost:3000/login'
    mail(to: @email, subject: 'Order receipt')
  end
end
