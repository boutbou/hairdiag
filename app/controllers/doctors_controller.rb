class DoctorsController < ApplicationController


 def dashboard
  @patients=Patient.all #pour le moment on affiche tout les patients
 end

 def history
  @patients=Patient.all
 end

 def assign_patient
 end

 def show_patient
  @patient = Patient.find(params[:id])
  @recommendation = Message.new
 end

 def create_answer
  @patient = Patient.find(params[:id])
  @recommendation = Message.new(message_params)
  if @recommendation.save
    redirect_to doctor_dashboard_path
  else
    render "doctors/show_patient"
  end


 end

private

 def message_params
   params.require(:message).permit(:subject, :content)
 end

end
