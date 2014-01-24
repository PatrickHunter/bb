class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.type :type
      t.hash :attributes

      t.timestamps
    end
  end
end
