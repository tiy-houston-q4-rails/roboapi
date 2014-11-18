class Api::UsersController < Api::BaseController

  skip_before_filter :authenticate_user!, only: [:create]

  def create
    user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
    if user.save
      render json: user
    else
      render json: {errors: user.errors}, status: 422
    end

  end

  def show
    render json: current_user
  end
end
