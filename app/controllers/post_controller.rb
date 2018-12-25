class PostController < ApplicationController
  def index
    @post = Post.all.reverse
  end

  def create
    @post = Post.new
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    
    redirect_to "/post/index"
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    
    redirect_to "/post/show/#{params[:id]}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to "/post/index"
  end
end
