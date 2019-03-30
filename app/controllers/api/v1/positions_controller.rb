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
    byebug
    if @position.save
      render json: @position, status: :created, location: @position
    else
      render json: @user.errors, status: unprocessable_entity
    end
  end

  private

  def find_position
    @position = Position.find(params[:id])
  end

end
