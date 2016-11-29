class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :qtitle
      t.text :qtext
      t.integer :qpoint
      t.boolean :approved
      t.references :category, foreign_key: true
      t.references :sub_category, foreign_key: true

      t.timestamps
    end
  end
end
