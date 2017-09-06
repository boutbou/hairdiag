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
    prefill_patient
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

  def prefill_patient
    @patient.first_name = "Jean-Claude" if @patient.first_name.blank?
    @patient.last_name = "Dusse" if @patient.last_name.blank?
    @patient.gender = "Un homme" if @patient.gender.blank?
    @patient.email = "contact@hairdiag.com" if @patient.email.blank?
    @patient.zip_code = "13008" if @patient.zip_code.blank?
    @patient.city = "Marseille" if @patient.city.blank?
    @patient.country = "France" if @patient.country.blank?
    @patient.age = 33 if @patient.age.blank?
    @patient.loss_start_date = "2015" if @patient.loss_start_date.blank?
    @patient.relative = "Père" if @patient.relative.blank?
    @patient.weekly_shampoo = 4 if @patient.weekly_shampoo.blank?
    @patient.dandruff = "oui" if @patient.dandruff.blank?
    @patient.greasy_hair = "oui" if @patient.greasy_hair.blank?
    @patient.refined_hair = "oui" if @patient.refined_hair.blank?
    @patient.brushing_hair = "oui" if @patient.brushing_hair.blank?
    @patient.shaving_hair = "non" if @patient.shaving_hair.blank?
    @patient.scalp_density = "moyenne" if @patient.scalp_density.blank?
    @patient.hair_thickness = "moyen" if @patient.hair_thickness.blank?
    @patient.hair_color = "gris" if @patient.hair_color.blank?
    @patient.hair_type = "raide" if @patient.hair_type.blank?
    @patient.vitamines = "non" if @patient.vitamines.blank?
    @patient.minoxidil = "non" if @patient.minoxidil.blank?
    @patient.finasteride = "non" if @patient.finasteride.blank?
    @patient.hair_transplant = "non" if @patient.hair_transplant.blank?
    @patient.traction_test = "2-3 cheveux" if @patient.traction_test.blank?
    @patient.restore_area = "Front" if @patient.restore_area.blank?
    @patient.technical_preference = "F.U.E. (Unités folliculaires par extraction)" if @patient.technical_preference.blank?
    @patient.remark = "Aucune" if @patient.remark.blank?
    @patient.photos = [File.open(Rails.root.join("app","assets","images","zindine.jpg"),"r")] if @patient.photos.blank?
    # @patient.stage = File.open("http://res.cloudinary.com/dgbt9zicg/image/upload/v1504186425/Stade2_jiqcsr.png")
  end
end
