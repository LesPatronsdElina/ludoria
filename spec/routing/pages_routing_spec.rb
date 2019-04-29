require 'rails_helper'

RSpec.describe "PagesController Routing", :type => :routing do
  it "properly generates a root route to display the home page when supplying: '/'" do
    expect(:get => "/").to route_to(
      :controller => "pages",
      :action => "home"
    )
  end

  it "properly generates a root route to display the legal page when supplying: '/legal'" do
    expect(:get => "/legal").to route_to(
      :controller => "pages",
      :action => "legal"
    )
  end

  it "properly generates a root route to display the about page when supplying: '/La_maison_ludoria'" do
    expect(:get => "/La_maison_ludoria").to route_to(
      :controller => "pages",
      :action => "about"
    )
  end
end
