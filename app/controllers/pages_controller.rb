class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :legal]

  def home
    @articles = BlogArticle.homepage.first(3)
  end

  def legal
  end
end
