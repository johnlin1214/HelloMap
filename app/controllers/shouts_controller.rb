class ShoutsController < ApplicationController
  def index
    @shouts = Shout.all
    @shout = Shout.new
    respond_to do |format|
      format.html
      format.json { render json: @shouts }
    end
  end

  def new
    @shout = Shout.new
  end

  def create
    @shout = Shout.new(shout_params)
    if @shout.save
      redirect_to shouts_path
    else
      render 'index'
    end
  end

  private

  def shout_params
    params.require(:shout).permit(:message, :lat, :lng)
  end
end
