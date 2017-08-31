class RemovePhotosOnPatients < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :photos, :integer
    remove_column :patients, :document, :integer
  end
end
