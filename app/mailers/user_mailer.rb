class UserMailer < ApplicationMailer
  def contact_ludoria(contact)
    @contact = contact
    mail(from: @contact.email, to: ENV['DEFAULT_EMAIL'], subject: "Ludoria : contact -")
  end
  def send_user_measures(user)
    @user = user
    mail(from: ENV['DEFAULT_EMAIL'], to: @user.email, subject: "Ludoria : vos mesures –")
  end
end
