class AdminsessionsController < ApplicationController
  def new
    @title = "Admin Sign in"
  end

  def index

end

  def create


 
  end

   def destroy
    redirect_to root_path
  end

end

