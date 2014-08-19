class HospitalsController < ApplicationController
  before_action :authenticate_user!

  def index
    @hospital = Hospital.all
  end

  def show
    @hospital = find_hospital
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.create hospital_data
    if @hospital.save == true
      redirect_to hospitals_path
    else
      render :new
    end
  end

  def edit
    @hospital = find_hospital
    @doctor = @hospital.doctors.new
  end

  def destroy
    @hospital = find_hospital
    @hospital.delete
    redirect_to hospitals_path
  end

  def with_dr
    @hospital = find_hospital.seeing_dr!
    redirect_to hospital_patients_path(@hospital)
  end

  def create_doctor
    @hospital = find_hospital
    @hospital.doctors.create doc_data
    redirect_to @hospital
  end

  def destroy_doctor
    @hospital = find_hospital
    @doctor = find_doc
    @doctor.delete
    redirect_to @hospital
  end
  
private
  def find_doc
    @doctor = Doctor.find params[:doctor_id]
  end

  def find_hospital
    @hospital = Hospital.find params[:id]
  end

  def hospital_data
    params.require(:hospital).permit(:name, :address, :phone_number, :workflow_state)
  end

  def doc_data
    params.require(:doctor).permit(:name)
  end
end






