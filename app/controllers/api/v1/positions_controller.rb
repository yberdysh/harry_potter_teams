class Api::V1::PositionsController < ApplicationController
  before_action :find_position, only: [:show]

  def index
    @positions = Position.all
    render json: @positions
  end

  def show
    render json: @position
  end

  private

  def find_position
    @position = Position.find(params[:id])
  end

end
