class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.string :email
      t.string :zip_code
      t.string :city
      t.string :country
      t.integer :age
      t.datetime :loss_start_date
      t.string :relative
      t.integer :weekly_shampoo
      t.string :dandruff
      t.string :greasy_hair
      t.string :refined_hair
      t.string :brushing_hair
      t.string :shaving_hair
      t.string :scalp_density
      t.string :hait_thickness
      t.string :hait_color
      t.string :hair_type
      t.string :vitamines
      t.string :minoxidil
      t.integer :minoxidil_doses
      t.string :finasteride
      t.string :hair_transplant
      t.string :hair_transplant_technic
      t.string :stage
      t.string :traction_test
      t.string :restore_area
      t.string :technical_preference
      t.string :remark
      t.integer :photos
      t.integer :document
      t.references :doctor, foreign_key: true
      t.integer :status
      t.references :diagnostic, foreign_key: true

      t.timestamps
    end
  end
end
