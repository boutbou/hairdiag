class AddPaymentToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :paid , :boolean
    add_column :patients, :payment, :json
  end
end
