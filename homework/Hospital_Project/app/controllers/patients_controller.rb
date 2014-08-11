class PatientsController < ApplicationController
  
  def index
    @patient = Patient.all
    @hospital = find_hospital
  end

  def show
    @patient = find_patient
    @hospital = find_hospital
  end

  def new
    @patient = Patient.new
    @hospital = find_hospital
  end

  def create
    @hospital = find_hospital
    @patient = @hospital.patients.new(patient_data)
    if @patient.save == true
      redirect_to hospital_patients_path(@hospital)
    else
      render :new
    end
  end

  def edit
    @patient = find_patient
    @hospital = find_hospital
    @doctor = @patient.doctors.new
  end

  def update
    @hospital = find_hospital
    @patient = find_patient
    if @patient.update_attributes patient_data
      redirect_to hospital_patient_path
    else
      render :edit
    end
  end

  def destroy
    @patient = find_patient
    @patient.delete
    redirect_to hospital_patients_path(@hospital)
  end

  def create_doctor
    @hospital = find_hospital
    @patient = find_patient
    @doctor = @patient.doctors.create doc_data
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def destroy_doctor
    @hospital = find_hospital
    @patient = find_patient
    @doctor = find_doc
    @doctor.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def with_dr
    @hospital = find_hospital
    @patient = find_patient.seeing_dr!
    redirect_to hospital_patients_path(@hospital)
  end

  def admitted
    @hospital = find_hospital
    @patient = find_patient.admitting!
    redirect_to hospital_patients_path(@hospital)
  end

  def test
    @hospital = find_hospital
    @patient = find_patient.testing!
    redirect_to hospital_patients_path(@hospital)
  end

  def surgery
    @hospital = find_hospital
    @patient = find_patient.cutting!
    redirect_to hospital_patients_path(@hospital)
  end

  def prep_dis
    @hospital = find_hospital
    @patient = find_patient.preping!
    redirect_to hospital_patients_path(@hospital)
  end

  def pay_bill
    @hospital = find_hospital
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
