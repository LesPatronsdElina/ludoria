class CreateBlogArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_articles do |t|
      t.string :title
      t.text :content
      t.string :cover_picture

      t.timestamps
    end
  end
end
