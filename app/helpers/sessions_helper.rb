module SessionsHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # def authorize
  #   redirect_to '/sessions/new' unless current_user
  # end

  def logged_in?
    !!current_user
  end

  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session[:user_id] = nil
  end

  def post_access_allowed?(post)
    logged_in? && current_user.id == post.user_id
  end

  def comment_access_allowed?(post)
    logged_in? && current_user.id == comment.user_id
  end

end
