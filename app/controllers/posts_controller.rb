class PostsController < ApplicationController
  def index
    @posts = Post.all
    @assets=Asset.all
    @title = "Sightings Submit" 
    @posts = Post.order('id DESC').paginate(:page => params[:page], :per_page => 3)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    5.times {@post.assets.build}
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post, :notice => "Successfully created post."
    else
      render :action => 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
    5.times {@post.assets.build}
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to @post, :notice  => "Successfully updated post."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy 
    redirect_to posts_url, :notice => "Successfully destroyed post."
  end
end
