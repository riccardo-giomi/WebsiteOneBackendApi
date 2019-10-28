class ProjectsController < ApplicationController

  before_action :find_project, only: [:update, :destroyi, :show]

  def create
    @project = Project.create(project_params)

    if @project.save
      render json: @project, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def index
    @projects = Project.all
    render json: @projects, status: 200
  end

  def update
    if @project.update_attributes(project_params)
      render json: @project, status: :ok
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @project
  end

  def destroy
    if @project.destroy
      head 204
    else
      render status: 404
    end
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :image_url, :status, :github_url, :issue_tracker, :slack_channel_name)
  end
end
