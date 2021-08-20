class StocksController < ApplicationController
  include StocksHelper
  def search
    error_message unless params[:stock].present? &&
      (@stock = Stock.new_lookup params[:stock]).present?
    respond_to { |format| format.js { render partial: 'users/result' } }
  end
end
