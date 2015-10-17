class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def create
    Pin.create pin_params
    redirect_to "/pins"
  end

  def show
    @pin = Pin.find params[:id]
  end

  def edit
    @pin = Pin.find params[:id]
  end

  def update
    @pin = Pin.find params[:id]
    @pin.update(pin_params)
    render "show"
  end

  def destroy
    @pin = Pin.find params[:id]
    @pin.destroy
    redirect_to "/pins"
  end

  private

  def pin_params
    params.require(:pin).permit(:url, :comment, :img)
  end

end
