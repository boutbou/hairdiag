class ChangeDefaultPrice < ActiveRecord::Migration[5.0]
  def change
    change_column :patients, :price_cents, :integer, :default => 2000
  end
end
