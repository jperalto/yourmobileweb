class CreateMobiles < ActiveRecord::Migration[6.0]
  def change
    create_table :mobiles do |t|
      t.references :marca, null: false, foreign_key: true
      t.references :modelo, null: false, foreign_key: true
      t.float :precio
      t.integer :stock
      t.string :imagen

      t.timestamps
    end
  end
end
