module UsersHelper
  def error_message_handling(params)

    flash.now[:alert] = "Please enter correct email or name"
  end

  def sanitize_params(params)
    return false if params.nil?
    search_field = params[:first_name_or_last_name_or_email_cont].to_s
    !(search_field == "" || search_field == "@" || search_field == " ")
  end

end
