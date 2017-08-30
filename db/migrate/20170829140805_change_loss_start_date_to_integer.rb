class ChangeLossStartDateToInteger < ActiveRecord::Migration[5.0]

  def change
    change_column :patients, :loss_start_date, :integer
  end
end
