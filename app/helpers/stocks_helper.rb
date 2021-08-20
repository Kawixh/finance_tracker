module StocksHelper
  def error_message
    flash.now[:alert] = "Please enter correct symbol"
  end
end
