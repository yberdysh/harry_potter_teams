class Api::V1::PositionsController < ApplicationController
  before_action :find_position, only: [:show]

  def index
    @positions = Position.all
    render json: @positions
  end

  def show
    render json: @position
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      render json: @position, status: :created, location: api_v1_position_url(@position)
    else
      render json: @position.errors, status: unprocessable_entity
    end
  end

  private

  def position_params
    params.permit(:name)
  end

  def find_position
    @position = Position.find(params[:id])
  end

end
