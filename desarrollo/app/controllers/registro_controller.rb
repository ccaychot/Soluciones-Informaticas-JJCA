class RegistroController < ApplicationController
    def index
        @registros = Registro.select("name, phone, mail,transfer_date,hour_transfer").order("name DESC");
    end

      def new
        @registro = Registro.new();
      end
    
      def show
         @registro = Registro.find(params[:id]);
      end


      def edit
          @registro = Registro.find(params[:id]);
          @name = @registro.name;
          @homeaddress = @registro.homeaddress;
          @endaddress = @registro.endaddress;
          @phone = @registro.phone;
          @mail = @registro.mail;
          @transfer_date = @registro.transfer_date;
          @hour_transfer = @registro.hour_transfer;
          @observation = @registro.observation;
      end


      def update
            @name = params[:registro]["name"];
            @homeaddress = params[:registro]["homeaddress"];
            @endaddress = params[:registro]["endaddress"];
            @phone = params[:registro]["phone"];
            @mail = params[:registro]["mail"];
            @transfer_date = params[:registro]["transfer_date"];
            @hour_transfer = params[:registro]["hour_transfer"];
            @observation = params[:registro]["observation"];        
            @registro = Registro.find(params[:id]);
             @registro.name=@name;
              @registro.homeaddress=@homeaddress;
               @registro.endaddress=@endaddress;
                @registro.phone=@phone;
                 @registro.mail=@mail;
                  @registro.transfer_date=@transfer_date;
                   @registro.hour_transfer=@hour_transfer;
                    @registro.observation=@observation;
            if @registro.save()
                redirect_to registro_index, :notice => "La tarea ha sido modificada";
            else
            render "edit";
            end
        end
  
  
     def destroy
          @registro = Registro.find(params[:id]);
          if @tarea.destroy()
             redirect_to registro_index, :notice => "La tarea ha sido eliminada";
          else
             redirect_to registro_index, :notice => "La tarea NO ha podido ser eliminada";
          end
     end
   

    def create
          #Recuperamos las varibles POST que vinieron desde la acción new.
          @name = params[:registro][:name];
          @homeaddress = params[:registro][:homeaddress];
          @endaddress = params[:registro][:endaddress];
          @phone = params[:registro][:phone];
          @mail = params[:registro][:mail];
          @transfer_date = params[:registro][:transfer_date];
          @hour_transfer = params[:registro][:hour_transfer];
          @observation = params[:registro][:observation];
          #Creamos el objeto con los valores a ingresar.
          @registro = Registro.new({
             :name => @name,
             :homeaddress => @homeaddress,
             :endaddress => @endaddress,
             :phone => @phone,
             :mail => @mail,
             :transfer_date => @transfer_date,
             :hour_transfer => @hour_transfer,
             :observation =>   @observation
          });
          
          #Verificamos si la tarea ha podido ser guardado correctamente.
          if @registro.save()
             redirect_to registro_index, :notice => "El registro ha sido insertada";
          else
             render "new";
          end
      end
   
end
