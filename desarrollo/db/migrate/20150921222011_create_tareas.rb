class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :titulo
      t.text :descripcion
      t.integer :prioridad
      t.boolean :activo

      t.timestamps null: false
    end
  end
end
