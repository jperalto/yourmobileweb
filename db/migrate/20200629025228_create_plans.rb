class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :nombre
      t.float :precio
      t.integer :sms
      t.integer :minutos
      t.float :datosGB
      t.boolean :redes

      t.timestamps
    end
  end
end
