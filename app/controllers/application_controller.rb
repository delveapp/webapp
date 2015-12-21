class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :null_session
  respond_to :html, :json
  before_action :auth_user, only: [:create_or_update, :create, :update, :destroy]
  before_filter :store_location

  def store_location
    return unless request.get?
    if request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr? # don't store ajax calls
      session[:previous_url] = request.referrer
    end
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def auth_user
    unless current_user || request.path == "/users/sign_in"
      render :json => {'Error' => 'User not authenticated'}, :status => 401
    end
  end
end
