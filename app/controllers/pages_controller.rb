class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :legal]

  def home
    @contact = Contact.new
  end

  def legal
  end
end
