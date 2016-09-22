class RewardsUsersController < ApplicationController
  def create
  @reward = Reward.where(project_id: params[:project_id]).first
  @user = current_user
  @rewards_user = RewardsUser.create(user: @user, reward: @reward)
  end

end
