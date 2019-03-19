class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @contact = Contact.create(contact_params)
    redirect_to root_path
  end
  private
  def contact_params
     params.require(:contact).permit(:email, :content)
  end
end
