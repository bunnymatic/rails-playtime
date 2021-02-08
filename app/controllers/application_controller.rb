class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user_session, :current_user

  def current_user_session
    return @current_user_session if defined? @current_user_session

    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined? @current_user

    @current_user = current_user_session.try(:user)
  end

  def user_required
    return if current_user

    if request.xhr?
      render json: { message: 'You need to be logged in' }, status: :unauthorized
    else
      store_location
      flash[:notice] = 'You must be logged in to access this page'
      redirect_to new_user_session_url
    end
  end

  def require_no_user
    return unless current_user

    store_location
    flash[:notice] = 'You must be logged out to access this page'
    redirect_to(root_url) && (return false)
  end

end
