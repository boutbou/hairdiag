class CreateMessageTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :message_templates do |t|
      t.string :subject
      t.string :content
      t.references :diagnostic, foreign_key: true

      t.timestamps
    end
  end
end
