class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, :with => :resource_not_found

  def resource_not_found
    respond_to do |format|
      #format.html{ render :template=>'/rescues/record_not_found', :status => 404 }
      format.xml{  render :xml  => 'Record Not Found', :status => 404 }
      format.json{ render :json => 'Record Not Found', :status => 404 }
    end
  end
end
