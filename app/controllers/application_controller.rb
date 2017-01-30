class ApplicationController < ActionController::Base
  include Pundit
  after_action :verify_authorized, except: :index
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  protect_from_forgery with: :exception

  def current_user
    current_employee || current_customer
  end

  def after_sign_in_path_for(resource)
    if resource.is_a? Customer
      customer_projects_path
    else
      super
    end
  end

  def user_not_authorized
    redirect_to(root_path, status: 403)
  end
end
