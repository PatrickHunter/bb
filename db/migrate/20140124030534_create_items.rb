class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :type_id
      t.text :attributes

      t.timestamps
    end
  end
end
