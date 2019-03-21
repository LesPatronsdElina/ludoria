class AddConditionsValidationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :conditions_validation, :boolean, default: false
  end
end
