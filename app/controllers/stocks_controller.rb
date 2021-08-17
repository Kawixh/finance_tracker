class StocksController < ApplicationController
  def search
    flash.now[:alert] = "Please enter correct symbol" unless params[:stock].present? &&
      (@stock = Stock.new_lookup params[:stock]).present?
    respond_to { |format| format.js { render partial: 'users/result' } }
  end
end
