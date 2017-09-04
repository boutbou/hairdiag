class AddDefaultToPrice < ActiveRecord::Migration[5.0]
  def change
    change_column :patients, :price_cents, :integer, :default => 20
  end
end
