class MonitorController < ApplicationController
  
  before_filter :login_required, :except => [:index]

  # method for monit test page
  def index
    render :layout => false
  end

  # method for exception notification and notification mail test
  def boomcrashbang
    raise "boom!"
    render :nothing => true
  end
  
end
