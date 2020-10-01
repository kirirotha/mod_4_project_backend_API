class FriendshipsController < ApplicationController
    before_action :find_friendship, only:[:show, :destroy, :update]

    def index
        # authenticate!
        # if current_user
            @friendships = Friendship.all
            render :json => @friendships , :status => :ok
        # else
        #     render :json => { :msg => "Login failed.. Try again" }
        # end
    end

    def show
        render :json => @friendship
    end

    def create
        @friendship = Friendship.create(friendship_params)
        if @friendship.valid?
            render json: @friendship, status: :created
        else
            render json: { error: 'failed to create friendship' }, status: :not_acceptable
        end
    end

    def update
        @friendship.update(friendship_params)
        @friendship.save
        render json: @friendship, status: :updated
    end

    def destroy
        @friendship.destroy
        render json: { msg: 'friendship destroyed' }, status: :accepted
    end

    private

    def friendship_params
        params.require(:friendship).permit(:id, :user1_id, :user2_id, :accepted, :active)
    end

    def find_friendship
        @friendship = Friendship.find_by(id: params[:id])
    end
end
