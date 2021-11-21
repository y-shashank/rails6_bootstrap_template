class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def dashboard
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
    if resource.is_a?(User)
      "/dashboard"
    else
      super
    end
  end
    

end
