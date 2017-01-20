class ProjectsController < ApplicationController
  def index
    authorize Project, :index?
    @projects = current_user.projects
  end

  def new
    authorize Project, :new?
  end
end
