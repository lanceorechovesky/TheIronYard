class PatientsController < ApplicationController
  
  def index
    @patient = Patient.all
  end

  def show
    @patient = find_patient
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create patient_data
    if @patient.save == true
      redirect_to patients_path
    else
      render :new
    end
  end

  def edit
    @patient = find_patient
  end

  def update
    @patient = find_patient
    @patient.update_attributes patient_data
    redirect_to patients_path
  end

  def destroy
    @patient = find_patient
    @patient.delete
    redirect_to patients_path
  end

private

  def find_patient
    @patient = Patient.find params[:id]
  end

  def patient_data
    params.require(:patient).permit(:first_name, :last_name, :dob, :complaint, :sex)
  end
end
