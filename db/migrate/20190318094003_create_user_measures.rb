class CreateUserMeasures < ActiveRecord::Migration[5.2]
  def change
    create_table :user_measures do |t|
      t.references :measure, foreign_key: true
      t.references :user, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
