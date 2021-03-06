class TeamsController < ApplicationController

  def index
    @conferences = Conference.includes(:teams).all
  end

  def roster
    @team = Team.from_param(params[:id])
    @roster = Player.joins(:team, :klass)
                    .select("players.*,
                             klasses.abbreviation AS klass_name,
                             klasses.id AS klass_id")
                    .where(teams: {id: @team.id})
                    .order('last_name asc').to_a
  end

end