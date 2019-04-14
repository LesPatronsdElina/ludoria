class AddPdfToBlogArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_articles, :pdf, :string
  end
end
