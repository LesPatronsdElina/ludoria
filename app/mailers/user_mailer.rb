class UserMailer < ApplicationMailer
  def contact_ludoria(contact)
    attachments.inline['logo-ludoria.png'] = File.read('app/assets/images/logo-ludoria.png')
    @contact = contact
    mail(from: @contact.email, to: ENV['DEFAULT_EMAIL'], subject: "Ludoria : contact -")
  end
  def send_user_measures(user)
    attachments.inline['logo-ludoria.png'] = File.read('app/assets/images/logo-ludoria.png')
    @user = user
    mail(from: ENV['DEFAULT_EMAIL'], to: @user.email, subject: "Ludoria : vos mesures –")
  end
end
