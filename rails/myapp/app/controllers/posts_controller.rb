class PostsController < ApplicationController

    # routingに対するactionを定義
    def index
        @posts = Post.all.order(created_at: 'desc')
    end

end
