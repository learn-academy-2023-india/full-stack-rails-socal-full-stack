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

    def create
        @new_post = Blog.create(blog_params)
        if @new_post.valid?
          redirect_to blogs_path
        end
    end

    def destroy
        @no_post = Blog.find(params[:id])
        @no_post.destroy
        redirect_to blogs_path
      end

    private
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end
