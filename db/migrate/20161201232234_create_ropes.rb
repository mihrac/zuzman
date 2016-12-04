class CreateRopes < ActiveRecord::Migration[5.0]
  def change
    create_table :ropes do |t|
      t.integer :ropeable_id
      t.string :ropeable_type
      t.references :ropeable, polymorphic: true


      t.timestamps
    end
  end
end
