class Contact < ApplicationRecord

  validates_format_of :email, :with => Devise::email_regexp
  validates :content, presence: true

end
