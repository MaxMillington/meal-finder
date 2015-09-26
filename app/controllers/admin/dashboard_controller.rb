class Admin::DashboardController < ApplicationController
  before_action :require_login

  def require_login
    render file: "/public/404" unless current_user
  end

  def index
    @user = User.find(current_user.id)
    @numbers = Number.all
    @locations = Location.all
  end

end