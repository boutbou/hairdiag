class DoctorsController < ApplicationController

def dashboard
  @patients=Patient.all #pour le moment on affiche tout les patients
end

def history
  @patients
end

def answer
end

private

def doctor_params
  params.require(:doctor).permit(:address, :zip_code,
    :city, :country, :description, :phone_number)
end

end
