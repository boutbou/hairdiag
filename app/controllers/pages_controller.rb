class PagesController < ApplicationController
  skip_before_action :authenticate_doctor!, only: [:home, :patients, :contact, :about]

  def home
  end

  def contact
  end

  def about
  end
end
