class CreateBlogPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_photos do |t|
      t.string :photo
      t.references :blog_article, foreign_key: true

      t.timestamps
    end
  end
end
