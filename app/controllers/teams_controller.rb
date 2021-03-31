class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all

    render json: @teams
  end

  # GET /teams/1
  def show
    hash = TeamsSerializer.new(@team, include: [:players, :games]).serializable_hash
    render json: {
        team: hash[:data][:attributes],
        players: hash[:included].map{|player| player[:attributes]},
        games: hash[:included].map{|game| game[:attributes]}
    }
  end

  # POST /teams
  def create
    @team = Team.new(team_params)
  
    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_params
      params.require(:team).permit(:name, :location, :sport, :league_name)
    end
end
