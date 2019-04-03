class Contact < ApplicationRecord
  after_create :send_contact_email

  validates_format_of :email, :with => Devise::email_regexp
  validates :content, presence: true

  def send_contact_email
    UserMailer.contact_ludoria(self).deliver_now
  end
end
