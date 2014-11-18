class Api::SessionsController < Api::BaseController

  skip_before_filter :authenticate_user!

  def sign_in
    email = params.fetch(:email, "").downcase
    password = params[:password]
    user = User.find_by email: email
    if user && user.valid_password?(password)
      render json: {success: true,
                    auth_token: user.auth_token,
                    email: user.email
                    }
    else
      render :json=> {:success=>false, :message=>"Error with your login or password"}, :status=>401
    end
  end

end
