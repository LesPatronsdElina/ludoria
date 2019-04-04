class ChangeValueForUserMeasures < ActiveRecord::Migration[5.2]
  def change
    change_column :user_measures, :value, :float
  end
end
