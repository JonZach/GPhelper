class AppointmentsController < ApplicationController
    def index
        @appointments = current_user.appointments.all.sort_by &:date
        #sorted = @appointments.sort_by &:date
    end

    def create
        @appointments = current_user.appointments.all
        @appointment = current_user.appointments.build( params[:appointment] )
        redirect_to :root
        if @appointment.save
          flash[:notice] = "#{@appointment.street} has been added to your schedule for #{@appointment.date}."
          redirect_to appointments_path
        else
          render :index
        end
    end

    def new
        @appointment = Appointment.new
    end

    def destroy
        @appointment = current_user.appointment.find( params[:id] )
        @appointment.destroy
        redirect_to :root
    end

end