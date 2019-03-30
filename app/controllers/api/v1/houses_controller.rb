class Api::V1::HousesController < ApplicationController
  before_action :find_house, only: [:show]

  def index
    @houses = House.all
    render json: @houses
  end

  def create
    @house = House.new(house_params)
    if @house.save
      render json: @house, status: :created, location: api_v1_house_url(@house)
    else
      render json: @house.errors, status: :unprocessable_entity
    end
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
