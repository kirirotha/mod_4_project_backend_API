class GamesController < ApplicationController
    before_action :find_game, only:[:show, :update, :destroy]

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
            render json: @game, status: :created
        else
            render json: { error: 'failed to create game' }, status: :not_acceptable
        end
    end

    def update
        @game.update(game_params)
        @game.save
        render json: @game, status: :updated
    end

    def destroy
        @game.destroy
        render json: { msg: 'game destroyed' }, status: :accepted
    end


    private

    def game_params
        params.require(:game).permit(:user1_id, :user2_id, :user1_score, :user2_score, :user1_bag, :user2_bag, :accepted, :active, :player1turn)
    end

    def find_game
        @game = Game.find_by(id: params[:id])
    end
end


