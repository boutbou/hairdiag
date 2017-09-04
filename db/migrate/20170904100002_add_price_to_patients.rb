class AddPriceToPatients < ActiveRecord::Migration[5.0]
  def change
    add_monetize :patients, :price, currency: { present: false }
  end
end
