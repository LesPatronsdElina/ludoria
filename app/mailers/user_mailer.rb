class UserMailer < ApplicationMailer
  def contact_ludoria(contact)
    @contact = contact
    mail(from: @contact.email, to: ENV['SENDGRID_USERNAME'], subject: "Ludoria contact")
  end
  def send_user_measures(user)
    @user = user
    mail(from: ENV['SENDGRID_USERNAME'], to: @user.email, subject: "Mesure pour patron ludoria")
  end
end
