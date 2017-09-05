class PatientsController < ApplicationController

  before_action :set_patient, except: [:new, :create]
  skip_before_action :authenticate_doctor!

  def show
    @doctor = Doctor.where(id: @patient.doctor_id).limit(1).first
    @message = Message.where(patient_id: @patient.id).limit(1).first
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.valid?
      @patient.save
      redirect_to validation_patient_path(@patient)
    else
      render :new
    end
  end

  def edit
    set_patient
  end

  def update
    @patient.update(patient_params)
    redirect_to validation_patient_path(@patient)
  end

  def validation
  end

  def payment
  end

  def thank_you
  end

  private

  def set_patient_status_to
    @patient.status = "payment_successful"
    @patient.save
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(
      :first_name,
      :last_name, :gender,
      :zip_code, :city,
      :country, :age, :loss_start_date,
      :relative, :weekly_shampoo, :dandruff,
      :greasy_hair, :refined_hair, :brushing_hair,
      :shaving_hair, :scalp_density,
      :hair_thickness, :hair_color,
      :hair_type, :vitamines,
      :finasteride, :stage, :traction_test,
      :restore_area, :technical_preference,
      :status, :email, :minoxidil, :minoxidil_doses,
      :hair_transplant, :hair_transplant_technic,
      :remark, photos:[])
  end
end
