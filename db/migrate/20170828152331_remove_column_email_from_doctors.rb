class RemoveColumnEmailFromDoctors < ActiveRecord::Migration[5.0]
  def change
    remove_column :doctors, :email
  end
end
