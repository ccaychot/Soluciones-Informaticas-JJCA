class Reservation < ActiveRecord::Base
    
@registro = Registro.new({
   :name => "Carlos Caycho Tarrillo",
   :phone => "954122918",
   :homeaddress  => "Izaguirre,Los Olivos",
   :endaddress => "Lima,Lima",
   :mail => "carlos.caycho.tarrillo@hotmail.com",
   :transfer_date => "12/04/2015",
   :hour_transfer => "12:34am",
   :observation => "Observacion"
  });
  @registro.save();
    
end
