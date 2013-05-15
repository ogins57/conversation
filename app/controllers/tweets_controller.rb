class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all(:order => 'created_ad DESC')
    end
end
