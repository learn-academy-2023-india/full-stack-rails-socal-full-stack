class BlogController < ApplicationController
    def index
        @blog = Blog.all
    end

    def show
        @one_post = Blog.find(params[:id])
    end

    def new
        @new_post = Blog.new
        # .new is a RESTful route that displays a form for the user.
    end
end
