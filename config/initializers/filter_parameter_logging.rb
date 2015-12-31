#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [:password]
