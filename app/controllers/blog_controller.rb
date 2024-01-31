class BlogController < ApplicationController
    def index
        @blog = Blog.all
    end

    def show
        @one_post = Blog.find(params[:id])
    end
end
