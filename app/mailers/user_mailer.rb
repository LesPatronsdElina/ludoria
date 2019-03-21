class UserMailer < ApplicationMailer
  def contact_ludoria(contact)
    @contact = contact
    mail(from: @contact.email, to: 'legeronflo@hotmail.fr', subject: "Ludoria contact")
  end
end
