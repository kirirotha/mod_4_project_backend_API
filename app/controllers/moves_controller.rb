class MovesController < ApplicationController
    before_action :find_move, only:[:show, :update]

    def index
        @moves = Move.all
        render :json => @moves
    end

    def show
        render :json => @move
    end

    def create
        @move = Move.create(move_params)
        if @move.valid?
            render json: @move, status: :created
        else
            render json: { error: 'failed to create move' }, status: :not_acceptable
        end
    end

    def update

    end

    private

    def move_params
        params.require(:move).permit(:id, :game_id, :letter, :x, :y)
    end

    def find_move
        @move = Move.find_by(id: params[:id])
    end
end
