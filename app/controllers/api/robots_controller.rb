class Api::RobotsController < Api::BaseController

  def index
    @robots = Robot.all
    render json: @robots
  end
end
