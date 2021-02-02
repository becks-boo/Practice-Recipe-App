class CreateQuantities < ActiveRecord::Migration[6.0]
  def change
    create_table :quantities do |t|
      t.string :measure
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
