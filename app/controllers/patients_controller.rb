class PatientsController < ApplicationController
  def validate
  end

  def new
    @patient = Patient.new
  end
end
