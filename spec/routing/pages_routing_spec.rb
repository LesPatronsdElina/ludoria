require 'rails_helper'

RSpec.describe "PagesController Routing", :type => :routing do
  it "properly generates a root route to display the home page when supplying: '/'" do
    expect(:get => "/").to route_to(
      :controller => "pages",
      :action => "home"
    )
  end
  it "properly generates a root route to display the measures page when supplying: '/measures'" do
    expect(:get => "/Mes_mesures").to route_to(
      :controller => "measures",
      :action => "index"
    )
  end

  it "properly generates a root route to display the legal page when supplying: '/Mes_mesures'" do
    expect(:get => "/legal").to route_to(
      :controller => "pages",
      :action => "legal"
    )
  end
end
