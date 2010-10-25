# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  include AuthenticatedSystem
  include ExceptionNotifiable
  include SslRequirement
  
  # Only ssl connection allowed!
  def ssl_required?
    return false if local_request? || RAILS_ENV == 'test'
    return true
  end

  # All controllers should use this layout
  layout "vmail"
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
private

  def login_required
    return redirect_to(login_path) unless logged_in?
  end

end
