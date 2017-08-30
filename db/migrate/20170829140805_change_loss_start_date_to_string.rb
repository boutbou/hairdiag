class ChangeLossStartDateToString < ActiveRecord::Migration[5.0]

  def change
    change_column :patients, :loss_start_date, :string
  end
end
