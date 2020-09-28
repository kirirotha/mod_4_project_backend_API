class FriendshipsController < ApplicationController
    before_action :find_friendship, only:[:show, :destroy]

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

    end

    def destroy

    end

    private

    def friendship_params
        params.require(:friendship).permit(:user1, :user2)
    end

    def find_friendship
        @friendship = Friendship.find_by(id: params[:id])
    end
end
