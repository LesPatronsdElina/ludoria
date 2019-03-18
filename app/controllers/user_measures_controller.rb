class UserMeasuresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]
  before_action :set_measure, only: [:new, :create]
  def new
    @user_measure = UserMeasure.new
     respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
  end

  def create
    user_measure_validities = []

    user_measures_params.each do |user_measure|
      new_user_measure = UserMeasure.new(user_measure)
      new_user_measure.user = current_user
      user_measure_validities << new_user_measure.valid?
    end
    unless user_measure_validities.include?(false)
      current_user.user_measures.create(user_measures_params)
    else
      raise
    end
  end

  private
  def user_measures_params
    params_to_return = []
    params.require(:user_measures).each do |_, user_measure_params|
      params_to_return << user_measure_params.permit(:measure_id, :value)
    end
    params_to_return
  end
  def set_measure
    @measures = Measure.all
  end
end
