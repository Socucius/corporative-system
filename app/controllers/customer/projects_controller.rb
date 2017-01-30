class Customer::ProjectsController < ApplicationController
  def index
    authorize Project, :index?
    @projects = current_user.projects
  end

  def create
    authorize Project, :create?
    @project = current_user.projects.build(project_params)
    if @project.save
      redirect_to customer_projects_path, flash: { success: I18n.t('projects.success') }
    else
      render :new
    end
  end

  def new
    authorize Project, :new?
    @project = current_user.projects.build
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
