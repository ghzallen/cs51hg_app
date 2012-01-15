class PagesController < ApplicationController

  def home
    @title = "Home"
    @news_admins = NewsAdmin.all
    @news_admins = NewsAdmin.order('id DESC').paginate(:page => params[:page], :per_page => 3)

end
  def enquiry 
    @title = "Enquiry Service"
    send_file "public/files/"+params[:filename] unless params[:filename].blank?
  end

  def support
    @title = "Support"
  end

  def tools
    @title = "Recording Tools"
    send_file "public/files/"+params[:filename] unless params[:filename].blank?
  end

  def contact
    @title = "Contact us"
  end

  def about
    @title = "About us"
  end

  def link
    @title = "Useful Link"
  end

end

