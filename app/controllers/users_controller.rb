class UsersController < ApplicationController
  def portfolio
    @tracked_stocks = current_user.stocks
    @user = current_user
  end
end
