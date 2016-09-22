class ProjectsController < ApplicationController

  def index
    @projects = Project.all

  end

  # my_project.rewards

  def new
    if current_user
    @project = Project.new
    @reward = Reward.new
  else
    redirect_to projects_path
  end
  end

  def create
    user_signed_in?
    @project = Project.new(project_params)
    @project.owner = current_user
    puts project_params
      if @project.save
        redirect_to @project
      else
        render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    @rewards = @project.rewards.all
    # @rewards = Reward.find(params[:project_id])
  end

  def destroy
    current_user
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def edit
    current_user
    @project = Project.find(params[:id])
  end

  def update
    current_user
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
