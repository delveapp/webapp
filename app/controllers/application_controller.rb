#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :null_session
  respond_to :html, :json
  before_action :auth_user, only: [:create_or_update, :create, :update, :destroy, :new]
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

  def after_sign_up_path_for(resource)
    #Do Not Redirect
  end


  def auth_user
    unless current_user || request.path.index("/users") == 0
      render :json => {'Error' => 'User not authenticated'}, :status => 401
    end
  end
end
