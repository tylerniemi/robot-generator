class RobotsController < ApplicationController

  def index
    @robots_data = Robot.all
  end

  def show
     @robot_data = Robot.find(params[:id])
  end

  def new
    @robot_data = Robot.new
  end

  def edit
  end

  def create
    @robot_data = Robot.new(robot_params)

      if @robot_data.save
        redirect_to @robot_data
      else
        render :new
      end
  end

  def update
    @robot_data = Robot.find(params[:id])
    if @robot_data.update(robot_params)
      redirect_to @robot_data
    else
      render 'edit'
    end
  end

  def destroy
     @robot_data = Robot.find(params[:id])
    @robot_data.destroy

    redirect_to robots_path
  end

  private

    def robot_params
      params.require(:robot).permit(
        :robot_name, :robot_description, :team, :color, :robot_type, :fuel)
    end
end
