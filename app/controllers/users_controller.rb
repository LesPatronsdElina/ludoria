class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  skip_after_action :verify_authorized, only: [:update]

  def edit
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def update
    @user.update(user_measures_params)
    respond_to do |format|
      format.html
      format.js { flash.now[:notice] = 'Un email vous a été envoyé' }
    end
    UserMailer.send_user_measures(@user).deliver_now
  end

  private
  def set_user
    @user = current_user
  end

  def user_measures_params
    params.require(:user).permit(user_measures_attributes:[:value, :id])
  end
end
