class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  skip_after_action :verify_authorized, only: [:index]
  skip_after_action :verify_policy_scoped, only: [:index]

  def index
    @events = Event.visibles.ordered_by_date
  end

end
