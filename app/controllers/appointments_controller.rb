class AppointmentsController < ApplicationController
    def index
        @appointments = current_user.appointments.all.sort_by &:date
        @json = @appointments.to_gmaps4rails do |appointment, marker|
          marker.infowindow render_to_string(:partial => "/appointments/infowindow", :locals => { :appointment => appointment})
              marker.title "#{appointment.street} #{appointment.city}"
        end
        best_route
    end

    def create
        @appointments = current_user.appointments.all
        @appointment = current_user.appointments.build( params[:appointment] )
        # redirect_to :root
        if @appointment.save
          flash[:notice] = "#{@appointment.street} has been added to your schedule for #{@appointment.date}."
          redirect_to appointments_path
        else
          redirect_to :index
        end
    end

    def new
        @appointment = Appointment.new
    end

    def best_route
        @route_appointments = current_user.appointments.all do |appointment|
          if appointment.geocoded?
            appointment.distance_from(current_user.business_address).round(2)
          end
        end
    end

    def destroy
        @appointment = Appointment.find( params[:id] )
        @appointment.destroy
        redirect_to appointments_path
    end

end