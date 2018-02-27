class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.integer :numero_cedula
      t.text :nombre
      t.text :telefono
      t.text :direccion
      t.text :correo

      t.timestamps
    end
  end
end
