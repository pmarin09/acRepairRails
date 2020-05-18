class AppointmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
    def index
      @appointments = Appointment.all
      respond_to do |format|
        format.html
        format.json {render json: @appointments}
      end
    end
    def new
      @appointment = Appointment.new
    end
    def create
      @appointment = Appointment.new(appointment_params)

      if @appointment.save
        flash[:notice] = "Su cita ha sido programada"
        respond_to do |format|
          format.html {redirect_to root_path}
          format.json {render json: {appointment: @appointment, status: "ok"} }
        end
       
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
  
