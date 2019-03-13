class CreateUserMesures < ActiveRecord::Migration[5.2]
  def change
    create_table :user_mesures do |t|
      t.references :mesure, foreign_key: true
      t.references :user, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
