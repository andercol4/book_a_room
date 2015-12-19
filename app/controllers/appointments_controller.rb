class AppointmentsController < ApplicationController
  before_action :find_appointment, except: [:index, :new, :create, :date]
  def index
    @room1 = Appointment.where(room_number: 1)
    @room2 = Appointment.where(room_number: 2)
    @room3 = Appointment.where(room_number: 3)
  end

  def date
    @date = params[:date].to_datetime
    @appointment = Appointment.new

  end

  def show
  end

  def new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    #TODO If it is greater than start time but less than the end time
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    else
      render :edit
    end
  end

  def destroy
    if @appointment.destroy
      redirect_to appointments_path
    else
      render :new
    end
  end









  private

  def appointment_params
    params.require(:appointment).permit(:first_name, :last_name, :number_in_party, :email, :room_number, :start_time, :end_time, :email_conformation, :description)
  end

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

end
