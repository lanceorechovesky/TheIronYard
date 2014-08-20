class PatientsController < ApplicationController
  before_action :find_hospital, only: [:index, :show, :new, :create, :edit, :update, :create_doctor, :destroy_doctor, :with_dr, :admitted, :test, :surgery, :prep_dis, :pay_bill]
  before_action :find_patient, only: [:show, :edit, :update, :destroy, :create_doctor, :destroy_doctor]
  
  def index
    @patient = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = @hospital.patients.new(patient_data)
    if @patient.save == true
      redirect_to hospital_patients_path(@hospital)
    else
      render :new
    end
  end

  def edit
    @doctor = @patient.doctors.new
  end

  def update
    if @patient.update_attributes patient_data
      redirect_to hospital_patient_path
    else
      render :edit
    end
  end

  def destroy
    @patient.delete
    redirect_to hospital_patients_path(@hospital)
  end

  def create_doctor
    @doctor = @patient.doctors.create doc_data
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def destroy_doctor
    @doctor = find_doc
    @doctor.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def with_dr
    @patient = find_patient.seeing_dr!
    redirect_to hospital_patients_path(@hospital)
  end

  def admitted
    @patient = find_patient.admitting!
    redirect_to hospital_patients_path(@hospital)
  end

  def test
    @patient = find_patient.testing!
    redirect_to hospital_patients_path(@hospital)
  end

  def surgery
    @patient = find_patient.cutting!
    redirect_to hospital_patients_path(@hospital)
  end

  def prep_dis
    @patient = find_patient.preping!
    redirect_to hospital_patients_path(@hospital)
  end

  def pay_bill
    @patient = find_patient.leaving!
    redirect_to hospital_patients_path(@hospital)
  end
  
private
  def find_doc
    @doctor = Doctor.find params[:doctor_id]
  end

  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_patient
    @patient = Patient.find params[:id]
  end

  def patient_data
     params.require(:patient).permit(:first_name, :last_name, :dob, :complaint, :sex, :workflow_state, :postdis_commit, :hospital_id)
  end

  def doc_data
    params.require(:doctor).permit(:name)
  end
end
