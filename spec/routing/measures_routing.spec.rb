require 'rails_helper'

RSpec.describe "PagesController Routing", :type => :routing do
 it "properly generates a root route to display the measures page when supplying: '/measures'" do
    expect(:get => "/Mes_mesures").to route_to(
      :controller => "measures",
      :action => "index"
    )
  end
end
