module Users::RegistrationsHelper
  def show_errors(isError)
    if isError
    errors = '<div class="alert alert-danger" role="alert">' +
    render( "users/shared/error_messages", resource: resource) + '</div>'
    errors.html_safe
    end
  end
end
