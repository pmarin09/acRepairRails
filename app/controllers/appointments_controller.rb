class AppointmentsController < ApplicationController

    def index
      @appointments = Appointment.all
    end
    def new
      @appointment = Appointment.new
    end
    def create
      @appointment = Appointment.new(appointment_params)

      if @appointment.save
        flash[:notice] = "Su cita ha sido programada"
        redirect_to root_path
       
      else
       redirect_back fallback_location: root_path
       flash[:alert] = "Error"
      end
    end
  
  
    private
    def appointment_params
      params.permit(:first_name, :last_name, :phone_number, :appointment_date, :appointment_time, :ac_brand,:ac_qty )
    end
  
  end
  
