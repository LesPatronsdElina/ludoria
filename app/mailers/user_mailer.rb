class UserMailer < ApplicationMailer
  def contact_ludoria(contact)
    @contact = contact
    mail(from: @contact.email, to: ENV['SENDGRID_USERNAME'], subject: "Ludoria contact")
  end
end
