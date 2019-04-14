class AddActiveToBlogArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_articles, :status, :integer, default: 0
  end
end
