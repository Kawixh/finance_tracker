class UsersController < ApplicationController
  def portfolio
    @tracked_stocks = current_user.stocks
    @user = current_user
  end
  def friends
    @friends = current_user.friends

  end
  def search

  end
end
