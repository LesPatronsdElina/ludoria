class UserMailer < ApplicationMailer
  def contact_ludoria(contact)
    @contact = contact
    mail(from: @contact.email, to: ENV['DEFAULT_EMAIL'], subject: "Ludoria contact")
  end
end
