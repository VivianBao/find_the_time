class HuddlesController < ApplicationController
  def index
    @huddles = Huddle.all
    render json: huddles
  end

  def show
    if huddle
      render json: huddle
    else
      render json: huddle.errros
    end
  end

  def create
    @huddle = Huddle.new(huddle_params)
    if @huddle.save!
      render json: huddle
    else
      render json: huddle.errors
    end
  end

  def destroy
    huddle&.destroy
    render json: { message: 'Huddle deleted!' }
  end

  private

  def huddle_params
    params.permit(:title, :confirmed_time, :status, :hosting, :checked,
                  :time_range)
  end

  def huddle
    @huddle ||= Huddle.find(params[:id])
  end
end
