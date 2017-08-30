class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :adress
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :description
      t.integer :avatar
      t.string :url
      t.string :email
      t.string :phone_number
      t.string :specialty
      t.integer :RPPS

      t.timestamps
    end
  end
end
