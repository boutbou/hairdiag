class PatientsController < ApplicationController
  skip_before_action :authenticate_doctor!
  def validate
  end

  def new
    @patient = Patient.new
  end
end
