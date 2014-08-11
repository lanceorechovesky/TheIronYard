class MedicationsController < ApplicationController
  def show
    @hospital = find_hospital
    @patient = find_patient
    @medication = find_med
  end

  def index
    @hospital = find_hospital
    @patient = find_patient
    @Medication = Medication.all
  end

  def new
    @medication = Medication.new
    @hospital = find_hospital
    @patient = find_patient
  end

  def create
    @hospital = find_hospital
    @patient = find_patient
    @medication = @patient.medications.new(med_data)
    if @medication.save == true
    redirect_to hospital_patient_medications_path(@hospital, @patient)
    else
      render :new
    end
  end

  def edit
    @hospital = find_hospital
    @patient = find_patient
    @medication = find_med
  end

  def update
    @hospital = find_hospital
    @patient = find_patient
    @medication = find_med
    if @medication.update_attributes med_data
      redirect_to hospital_patient_medication_path
    else
      render :edit
    end
  end

  def destroy
    @medication = find_med
    @medication.delete
    redirect_to hospital_patient_medications_path
  end

private
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_patient
    @patient = Patient.find params[:patient_id]
  end

  def find_med
    @medication = Medication.find params[:id]
  end

  def med_data
    params.require(:medication).permit(:name, :patient_id, :dose, :restricted)
  end



end
