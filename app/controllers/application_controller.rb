class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Sessions Controller Helpers
  include SessionsHelper
end
