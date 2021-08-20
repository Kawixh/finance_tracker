class UsersController < ApplicationController
  include UsersHelper
  before_action :search

  def portfolio
    @tracked_stocks = current_user.stocks
    @user = current_user
  end

  def friends
    @friends = current_user.friends
  end

  def search
    @q = User.ransack(params[:q])
    @people = @q.result.to_a - [current_user] if sanitize_params params[:q]
    respond_to { |format| format.html; format.json; format.js { render partial: 'users/friend/result' } }
    error_message_handling(params[:q])
  end

end
