class Api::BaseController < ApplicationController
  before_action :authenticate_user!
  helper_method :current_user


  def current_user
    @current_user
  end

  protected
  def authenticate_user!
    if request.headers["x-auth-token"]
      @current_user = User.find_by auth_token: request.headers["x-auth-token"]
      return true if @current_user.present?
    end
    invalid_login_attempt
  end

  def invalid_login_attempt
    warden.custom_failure!
    render :json=> {:success=>false, :message=>"Error with your login or password"}, :status=>401
  end
end
