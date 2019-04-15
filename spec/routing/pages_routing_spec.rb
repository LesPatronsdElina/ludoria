require 'rails_helper'

RSpec.describe "PagesController Routing", :type => :routing do
  it "properly generates a root route to display the home page when supplying: '/'" do
    expect(:get => "/").to route_to(
      :controller => "pages",
      :action => "home"
    )
  end
  it "properly generates a root route to display the my_measures page when supplying: '/Mes_mesures'" do
    expect(:get => "/Mes_mesures").to route_to(
      :controller => "pages",
      :action => "my_measures"
    )
  end

  it "properly generates a root route to display the legal page when supplying: '/Mes_mesures'" do
    expect(:get => "/legal").to route_to(
      :controller => "pages",
      :action => "legal"
    )
  end
end
