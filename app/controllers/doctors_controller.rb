class DoctorsController < ApplicationController
  skip_before_action :authenticate_doctor!, only: [:dashboard]
  def dashboard
  end

  def history
  end

  def answer
  end
end
