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
    if @patient.update_attributes patient_data
      redirect_to patients_path
    else
      render :edit
    end
  end

  def destroy
    @patient = find_patient
    @patient.delete
    redirect_to patients_path
  end

  def with_dr
    @patient = find_patient.seeing_dr!
    redirect_to patients_path
  end

  def admitted
    @patient = find_patient.admitting!
    redirect_to patients_path
  end

  def test
    @patient = find_patient.testing!
    redirect_to patients_path
  end

  def surgery
    @patient = find_patient.cutting!
    redirect_to patients_path
  end

  def prep_dis
    @patient = find_patient.preping!
    redirect_to patients_path
  end

  def pay_bill
    @patient = find_patient.leaving!
    redirect_to patients_path
  end
  
private

  def find_patient
    @patient = Patient.find params[:id]
  end

  def patient_data
    params.require(:patient).permit(:first_name, :last_name, :dob, :complaint, :sex, :workflow_state, :postdis_commit)
  end
end
