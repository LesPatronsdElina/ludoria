class AddCondtionsValidationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :condtions_validation, :boolean, default: false
  end
end
