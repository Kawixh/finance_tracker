module ApplicationHelper
  def show_notice(notice)
    if notice.present?
      notice = '<div class="alert alert-success" role="alert"> <p class="notice">' + notice + '</p> </div>'
      notice.html_safe
    end
  end

  def show_alert(alert)
    if alert.present?
      alert = '<div class="alert alert-danger" role="alert"> <p class="alert">'+ alert +'</p> </div>'
      alert.html_safe
    end
  end



end
