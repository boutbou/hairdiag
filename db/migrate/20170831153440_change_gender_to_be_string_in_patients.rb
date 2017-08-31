class ChangeGenderToBeStringInPatients < ActiveRecord::Migration[5.0]

  def change
    change_column :patients, :gender, :string
  end
end
