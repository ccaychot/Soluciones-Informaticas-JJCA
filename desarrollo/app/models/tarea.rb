class Tarea < ActiveRecord::Base
  
 # attr_accessible :activo, :descripcion, :prioridad, :titulo
  
  @tarea = Tarea.new({
   :titulo => "Título de prueba",
   :descripcion => "Descripción de prueba",
   :prioridad => 1,
   :activo => true
  });
  @tarea.save();


  @tarea = Tarea.create({
   :titulo => "Título de prueba 2",
   :descripcion => "Descripción de prueba 2",
   :prioridad => 2,
   :activo => true
   });
 
 
  @tarea = Tarea.find(1);
  @tarea.titulo = "Título modificado";
  @tarea.descripcion = "Descripción modificada";
  @tarea.prioridad = 7;
  @tarea.activo = false;
  @tarea.save();

  @tarea = Tarea.find(1);
  @tarea.update_attributes({
   :titulo => "Título modificado",
   :descripcion => "Descripción modificada",
   :prioridad => 7,
   :activo => false
  });

#@tareas = Tarea.update_all(
#   {:activo => false},
#   {:titulo => "Sin título"},
# );
 
#@tarea = Tarea.find(1);
#@tarea.destroy();

#@tareas = Tarea.destroy_all(
#   {:activo => false}
# );
 
# @tareas = Tarea.select("titulo, descripcion").where(:activo => true).order("titulo").limit(3);
# attr_accessible :activo, :descripcion, :prioridad, :titulo
 
    
    
end
