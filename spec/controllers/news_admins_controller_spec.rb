require File.dirname(__FILE__) + '/../spec_helper'

describe NewsAdminsController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => NewsAdmin.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    NewsAdmin.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    NewsAdmin.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(news_admin_url(assigns[:news_admin]))
  end

  it "edit action should render edit template" do
    get :edit, :id => NewsAdmin.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    NewsAdmin.any_instance.stubs(:valid?).returns(false)
    put :update, :id => NewsAdmin.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    NewsAdmin.any_instance.stubs(:valid?).returns(true)
    put :update, :id => NewsAdmin.first
    response.should redirect_to(news_admin_url(assigns[:news_admin]))
  end

  it "destroy action should destroy model and redirect to index action" do
    news_admin = NewsAdmin.first
    delete :destroy, :id => news_admin
    response.should redirect_to(news_admins_url)
    NewsAdmin.exists?(news_admin.id).should be_false
  end
end
