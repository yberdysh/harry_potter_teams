class Api::V1::TeamsController < ApplicationController
  before_action :find_team, only: [:show, :destroy]
  def index
    @teams = Team.all
    render json: @teams
  end

  def show
    render json: @team
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      render json: @team, status: :created, location: api_v1_team_url(@team)
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @team.destroy
  end

  private

  def find_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.permit(:name, :user_id)
  end
end
