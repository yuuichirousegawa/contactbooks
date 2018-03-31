module SessionsHelper

  #ユーザでログイン
  def log_in(user)
    session[:user_id] = user.id
  end
  
  #現在ログイン中のユーザを返す（いる場合）
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !!current_user
  end
  
  def worker
    Workersetting.new
  end
  
  def customer
    Customersetting.new
  end
end