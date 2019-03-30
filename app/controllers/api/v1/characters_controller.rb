class Api::V1::CharactersController < ApplicationController

  def index
    @characters = Character.all
    render json: @characters
  end

  # def create
  #   @character = Character.create(character_params)
  #   render json: { :status => :ok, :message => "Success!", characer: @character }
  # end

  def create

    @character = Character.new(character_params)
    if @character.save
      render json: @character, status: :created, location:        api_v1_character_url(@character)
    else
      render json: @character.errors, status: :unprocessable_entity

    end
  end

  private

  def character_params
    # whitelist params
    params.permit(:name, :house_id, :position_id, :team_id)
  end

end
