class Api::V1::HousesController < ApplicationController
  before_action :find_house, only: [:show]

  def index
    @houses = House.all
    render json: @houses
  end

  def create
    byebug
    @house = House.create(house_params)
    render json: @house
  end

  def show
    render json: @house
  end

  private

  def house_params
    params.permit(:name)
  end

  def find_house
    @house = House.find(params[:id])
  end
end
