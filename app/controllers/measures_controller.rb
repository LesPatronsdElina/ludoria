class MeasuresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_measure, only: [:index]
  def index
  end
  private
  def set_measure
    @mesures = Measure.all
  end
end
