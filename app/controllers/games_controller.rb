class GamesController < ApplicationController
    before_action :find_game, only:[:show, :update]

    def index
        @games = Game.all
        render :json => @games
    end

    def show
        render :json => @game
    end

    def create
        @game = Game.create(game_params)
        if @game.valid?
            render json: { auth_key: token }, status: :created
        else
            render json: { error: 'failed to create game' }, status: :not_acceptable
        end
    end

    def update

    end

    private

    def game_params
        params.require(:game).permit(user1, :user2, :user1_score, :user2_score, :user1_bag, :user2_bag, :accepted, :active)
    end

    def find_game
        @game = Game.find_by(id: params[:id])
    end
end


