class TweetsController < ApplicationController
    def index
       @tweets = Tweet.all.order(created_at: :desc)
    end

    def new
        @tweet = Tweet.new
    end

    def show
        @tweet = Tweet.find(params[:id])
    end


    def destroy
        if Tweet.find(params[:id]).destroy
            redirect_to root_path
        end
    end

    def create
        @tweet = Tweet.new(tweets_params)
        if @tweet.save
            redirect_to @tweet, notice: "Tweet creado?"
        else
            render :new, status: :see_other
        end
    end

    def tweets_params
        params.require(:tweet).permit(:content, :monster_id)
      end
end