class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :patients, :hait_thickness, :hair_thickness
    rename_column :patients, :hait_color, :hair_color
  end
end
