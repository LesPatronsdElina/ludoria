class AddImportantToMeasures < ActiveRecord::Migration[5.2]
  def change
    add_column :measures, :important, :boolean, default: false
  end
end
