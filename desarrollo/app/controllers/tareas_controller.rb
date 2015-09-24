class TareasController < ApplicationController
  
  def index
    @tareas = Tarea.select("id, titulo, descripcion").where(:activo => true).order("id DESC");
  end

  def new
    @tarea = Tarea.new();
  end


  def show
     @tarea = Tarea.find(params[:id]);
  end


  def edit
      @tarea = Tarea.find(params[:id]);
      @titulo = @tarea.titulo;
      @descripcion = @tarea.descripcion;
      @prioridad = @tarea.prioridad;
  end


  def update
      @titulo = params[:tarea]["titulo"];
      @descripcion = params[:tarea]["descripcion"];
      @prioridad = params[:tarea]["prioridad"];
      @tarea = Tarea.find(params[:id]);
      @tarea.titulo = @titulo;
      @tarea.descripcion = @descripcion;
      @tarea.prioridad = @prioridad;
      if @tarea.save()
         redirect_to tareas_path, :notice => "La tarea ha sido modificada";
      else
         render "edit";
      end
  end

   def destroy
      @tarea = Tarea.find(params[:id]);
      if @tarea.destroy()
         redirect_to tareas_path, :notice => "La tarea ha sido eliminada";
      else
         redirect_to tareas_path, :notice => "La tarea NO ha podido ser eliminada";
      end
   end

  
  def create
      #Recuperamos las varibles POST que vinieron desde la acción new.
      @titulo = params[:tarea][:titulo];
      @descripcion = params[:tarea][:descripcion];
      @prioridad = params[:tarea][:prioridad];
      #Creamos el objeto con los valores a ingresar.
      @tarea = Tarea.new({
         :titulo => @titulo,
         :descripcion => @descripcion,
         :prioridad => @prioridad,
         :activo => true
      });
      #Verificamos si la tarea ha podido ser guardado correctamente.
      if @tarea.save()
         redirect_to tareas_path, :notice => "La tarea ha sido insertada";
      else
         render "new";
      end
   end
 
 
   # def finalizar
   #   @tarea = Tarea.find(params[:id]);
   #   @tarea.activo = false;
   #   if @tarea.save()
   #      redirect_to tareas_path, :notice => "La tarea ha sido finalizada";
   #   else
   #      redirect_to tareas_path, :notice => "La tarea NO ha podido finalizar";
   #   end
   #end


  
end
