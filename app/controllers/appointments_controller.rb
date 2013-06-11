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

end