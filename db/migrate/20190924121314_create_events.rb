class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.text :description
      t.string :inscription_link
      t.boolean :visible, default: true
      t.datetime :date
      t.string :picture

      t.timestamps
    end
  end
end
