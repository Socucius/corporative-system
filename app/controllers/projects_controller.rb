class ProjectsController < ApplicationController
  def new
    authorize Project, :new?
  end
end
