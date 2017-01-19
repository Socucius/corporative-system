class ProjectsController < ApplicationController
  def index
    authorize Project, :index?
  end

  def new
    authorize Project, :new?
  end
end
