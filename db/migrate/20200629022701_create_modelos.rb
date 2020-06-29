class CreateModelos < ActiveRecord::Migration[6.0]
  def change
    create_table :modelos do |t|
      t.string :descripcion
      t.string :marca
      t.string :references

      t.timestamps
    end
  end
end
