class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.set :required_attributes
      t.set :optional_attributes

      t.timestamps
    end
  end
end
