class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end

    def create
        @appointment = Appointment.create( params[:appointment] )
        redirect_to :root
    end

    def new
        @appointment = Appointment.new
    end

    def destroy
        @appointment = Appointment.find( params[:id] )
        @appointment.destroy
        redirect_to :root
    end

end