module UserStocksHelper
  def stock_added_flash(name)
    flash[:notice] = "Stock #{name} successfully added."
  end

  def stock_removed_flash(ticker)
    flash[:notice] = "#{ticker} is successfully deleted."
  end
end
