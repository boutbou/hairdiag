class DoctorsController < ApplicationController


 def dashboard
  @patients_available = Patient.where(status: "payment_successful")
 end

 def history
  @patients=Patient.where(doctor_id: :current_doctor)
 end


 def assign_patient
  @patient_selected = Patient.where(status: "payment_successful").to_a.sample

  if @patient_selected.nil?
    #flash:"plus de patient"
  else
    @patient_selected.doctor_id = current_doctor.id
    @patient_selected.status = "assigned"
    @patient_selected.save
  end
  redirect_to doctor_show_patient_path(@patient_selected)
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
