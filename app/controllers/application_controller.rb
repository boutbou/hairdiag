class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_doctor!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :adress, :city, :zip_code, :country, :phone_number, :description, :specialty, :RPPS, :avatar])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:address, :zip_code,
      :city, :country, :description, :phone_number, :avatar])
  end

  def default_url_options
  { host: ENV["HOST"] || "localhost:3000" }
end

end
