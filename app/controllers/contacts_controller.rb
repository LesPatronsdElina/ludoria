class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      respond_to do |format|
        format.html
        format.js { flash.now[:notice] = 'Votre message a bien été envoyé' }
      end
    end
  end

  private
  def contact_params
     params.require(:contact).permit(:email, :content)
  end
end
