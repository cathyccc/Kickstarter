class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @rewards = RewardsUser.where(user_id: @user)
    # @projects = Project.where(user_id: @user)
  end
end
