class CaseAssignment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
end

# @patient1 = Patient.new
# @patient1.status = payment_successful ==> @case = CaseAssignment.new(patient: "@patient1")
# @doctors_pool = doctors.where(50km < zipcode - @patient1.zip_code)
# if current_user belongs to @docteurs_pool --> il peut se l'associer
