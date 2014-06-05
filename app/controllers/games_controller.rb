class GamesController < ApplicationController

  def index
    @games = Game.all

    render json: @games
  end

  def create
    @game = Game.new(params[:game])

    if @game.save
      render json: @game
    else
      render json: @game.errors
    end
  end
end
