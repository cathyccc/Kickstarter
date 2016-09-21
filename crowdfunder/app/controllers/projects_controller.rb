class ProjectsController < ApplicationController
  def index
    @projects = Project.all

  end

  # my_project.rewards

  def new
    @project = Project.new
    @reward = Reward.new
  end

  def create
    @project = Project.new(project_params)
      if @project.save
        redirect_to project_url
      else
        render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    @rewards = Reward.find(params[:project_id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
      if @project.update_attributes(project_params)
        redirect_to projects_path
      else
        render :edit
      end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :goal, :image, rewards_attributes: [:title, :description, :pledge])
  end

  def load_project
    @project = Project.find(params[:project_id])
  end

end
