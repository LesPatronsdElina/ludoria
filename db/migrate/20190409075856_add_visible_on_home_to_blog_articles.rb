class AddVisibleOnHomeToBlogArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_articles, :visible_on_home, :boolean, default: false
  end
end
