class AddPhotosToBlogArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_articles, :photos, :json
  end
end
