class BlogArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @articles = BlogArticle.active.order(:id)
  end

  def show
    @article = BlogArticle.find(params[:id])
  end
end

