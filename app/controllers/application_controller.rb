class ApplicationController < ActionController::Base
  include Pundit
  after_action :verify_authorized, except: :index
  protect_from_forgery with: :exception

  def current_user
    current_employee || current_customer
  end

  def after_sign_in_path_for(resource)
    if resource.is_a? Customer
      projects_path
    else
      super
    end
  end
end
