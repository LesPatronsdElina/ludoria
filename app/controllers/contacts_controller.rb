class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @contact = Contact.new(contact_params)
    @contact.save
  end
  private
  def contact_params
     params.require(:contact).permit(:email, :content)
  end
end
