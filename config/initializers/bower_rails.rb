#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

BowerRails.configure do |bower_rails|
  # Tell bower-rails what path should be considered as root. Defaults to Dir.pwd
  # bower_rails.root_path = Dir.pwd

  # Invokes rake bower:install before precompilation. Defaults to false
  # bower_rails.install_before_precompile = true

  # Invokes rake bower:resolve before precompilation. Defaults to false
  # bower_rails.resolve_before_precompile = true

  # Invokes rake bower:clean before precompilation. Defaults to false
  # bower_rails.clean_before_precompile = true

  # Invokes rake bower:install:deployment instead rake bower:install. Defaults to false
  # bower_rails.use_bower_install_deployment = true
  #
  # Invokes rake bower:install and rake bower:install:deployment with -F (force) flag. Defaults to false
  # bower_rails.force_install = true
end
