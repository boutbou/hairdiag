class DoctorsController < ApplicationController


 def dashboard
  @waiting_patient = Patient.where(status: "assigned", doctor_id: current_doctor.id).limit(1).first
  if @waiting_patient.nil?
    @patients_available = Patient.where(status: "payment_successful")
  else
    redirect_to doctor_show_patient_path(@waiting_patient)
  end
end

 def history
  @patients=Patient.where(doctor_id: :current_doctor)
 end


 def assign_patient
  @patient_selected = Patient.where(status: "payment_successful").to_a.sample

  if @patient_selected.nil?
    flash[:notice] = "Il n'y a pas de cas en attente d'être traité"
    redirect_to doctor_dashboard_path
  else
    @patient_selected.doctor_id = current_doctor.id
    @patient_selected.status = "assigned"
    @patient_selected.save
    redirect_to doctor_show_patient_path(@patient_selected)
  end

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
