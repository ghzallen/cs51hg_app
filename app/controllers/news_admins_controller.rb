class NewsAdminsController < ApplicationController
before_filter :authenticate, :only => [:index]

  def index
    @news_admins = NewsAdmin.all
    @news_pictures =NewsPicture.all
    @title = "News Update" 
    @news_admins = NewsAdmin.order('id DESC').paginate(:page => params[:page], :per_page => 3)
  end

  def show
    @news_admin = NewsAdmin.find(params[:id])
  end

  def new
    @news_admin = NewsAdmin.new
    5.times {@news_admin.news_pictures.build}
  end

  def create
    @news_admin = NewsAdmin.new(params[:news_admin])
    if @news_admin.save
      redirect_to root_path, :notice => "Successfully created news_admin."
    else
      render :root_path
    end
  end

  def edit
    @news_admin = NewsAdmin.find(params[:id])
    5.times {@news_admin.news_pictures.build}
  end

  def update
    @news_admin = NewsAdmin.find(params[:id])
    if @news_admin.update_attributes(params[:news_admin])
      redirect_to root_path, :notice  => "Successfully updated news_admin."
    else
      render :action => 'edit'
    end
end

  def destroy
    @news_admin = NewsAdmin.find(params[:id])
    @news_admin.destroy 
    redirect_to root_path, :notice => "Successfully destroyed post."
  end
end
