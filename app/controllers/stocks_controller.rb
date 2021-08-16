class StocksController < ApplicationController
  def search
    if params[:stock].present? && (@stock = Stock.new_lookup params[:stock]).present?
      respond_to { |format| format.js { render partial: 'users/result' } }
      # render 'users/portfolio'
    else
      flash[:alert] = "Please enter correct symbol"
      redirect_to '/portfolio'
    end
  end
end
