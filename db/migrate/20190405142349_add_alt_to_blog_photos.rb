class AddAltToBlogPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_photos, :alt, :string, default: "Ludoria"
  end
end
