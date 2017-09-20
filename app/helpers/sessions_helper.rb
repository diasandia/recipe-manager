module SessionsHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  # def authorize
  #   redirect_to '/sessions/new' unless current_user
  # end

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def login(user)
    session[:user_id] = user.id
  end
  helper_method :login

  def logout
    session[:user_id] = nil
  end
  helper_method :logout

  def post_access_allowed?(post)
    logged_in? && current_user.id == post.user_id
  end
  helper_method :post_access_allowed?

  def comment_access_allowed?(post)
    logged_in? && current_user.id == comment.user_id
  end
  helper_method :comment_access_allowed?
  
end
