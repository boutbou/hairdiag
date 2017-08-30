class DoctorsController < ApplicationController

  def dashboard
  end

  def history
  end

  def answer
  end
  
  def assign_patient
  end

  def show_patient
  end

  def create_answer
  end
  
  private

  def doctor_params
    params.require(:doctor).permit(:address, :zip_code,
    :city, :country, :description, :phone_number)
  end
end