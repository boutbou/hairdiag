class ChangeRppsToBeStringInDoctors < ActiveRecord::Migration[5.0]
  def change
    change_column :doctors, :RPPS, :string
  end
end
