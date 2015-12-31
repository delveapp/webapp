#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

module ApplicationHelper
  def resource_name
    :user
  end

  def resource

    @resource ||= User.new

  end

  def devise_mapping

    @devise_mapping ||= Devise.mappings[:user]

  end
end
