class CreateModelos < ActiveRecord::Migration[6.0]
  def change
    create_table :modelos do |t|
      t.string :descripcion
      t.references :marca, null: false, foreign_key: true

      t.timestamps
    end
  end
end
