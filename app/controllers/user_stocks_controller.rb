class UserStocksController < ApplicationController
  include UserStocksHelper
  def create
    stock = Stock.new_lookup(params[:ticker]) if (stock = Stock.check_db params[:ticker] ).blank?
    @user_stock = UserStock.create user: current_user, stock: stock
    stock_added_flash(stock.name)
    redirect_to portfolio_path
  end

  def destroy
    stock = Stock.find(params[:id])
    user_stock = UserStock.where(user_id: current_user.id, stock_id: stock).first
    user_stock.destroy
    stock_removed_flash(stock.ticker)
    redirect_to portfolio_path

  end



end
