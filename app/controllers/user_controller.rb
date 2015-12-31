#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

class UserController < ApplicationController

  def destroy
    user = current_user
    given_user_id = params[:id].to_i

    puts user.id
    puts given_user_id
    if given_user_id != user.id
      render :json => {success: false, error: "current user id  #{user.id} and given user id  #{given_user_id}"}, :status => 500
    elsif user.destroy!
      render :json => {success: true, data: user.as_json}
    else
      render :json => {success: false, error: "user #{user.id} not found"}, :status => 404
    end
  end

end
