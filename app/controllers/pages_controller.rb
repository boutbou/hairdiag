class PagesController < ApplicationController

skip_before_action :authenticate_doctor!
skip_before_action :authenticate_doctor!, only: :home

  def home
  end

  def contact
  end

  def about
  end
end
