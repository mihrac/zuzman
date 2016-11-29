class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :btitle
      t.text :btext
      t.integer :bpoint
      t.boolean :bapproved
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.references :sub_category, foreign_key: true

      t.timestamps
    end
  end
end
