class ChangeStatusToBeStringInPatients < ActiveRecord::Migration[5.0]
  def change
    change_column :patients, :status, :string
  end
end
