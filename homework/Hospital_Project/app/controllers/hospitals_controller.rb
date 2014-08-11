class HospitalsController < ApplicationController
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

  def destroy
    @hospital = find_hospital
    @hospital.delete
    redirect_to hospitals_path
  end

  def with_dr
    @hospital = find_hospital.seeing_dr!
    redirect_to hospital_patients_path(@hospital)
  end

  # def admitted
  #   @patient = find_hospital.admitting!
  #   redirect_to hospital_patients_path(@hospital)
  # end

  # def test
  #   @patient = find_hospital.testing!
  #   redirect_to hospital_patients_path(@hospital)
  # end

  # def surgery
  #   @patient = find_hospital.cutting!
  #   redirect_to hospital_patients_path(@hospital)
  # end

  # def prep_dis
  #   @patient = find_hospital.preping!
  #   redirect_to hospital_patients_path(@hospital)
  # end

  # def pay_bill
  #   @patient = find_hospital.leaving!
  #   redirect_to hospital_patients_path(@hospital)
  # end
  
private
  def find_hospital
    @hospital = Hospital.find params[:id]
  end

  def hospital_data
    params.require(:hospital).permit(:name, :address, :phone_number, :workflow_state)
  end
end






