# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Put Permitter in all controllers
ActionController::Base.send :include, ActionController::Permittance
