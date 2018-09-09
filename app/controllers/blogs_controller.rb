class BlogsController < ApplicationController

  def index
  	@blogs = Blog.all
  end

  def new
  	@blog = Blog.new
  end

  #Save posts in DataBase
  def create
  	@blog = Blog.new(blog_params)
  	if @blog.save
  		redirect_to @blog
  	else
  		render 'new'
  	end
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  private

  def blog_params
  	params.require(:blog).permit(:name, :body)
  end


end
