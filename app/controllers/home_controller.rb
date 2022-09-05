class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home_page]
  def home_page
  end

  def dashboard
    @stores = current_user.stores.all
  end
end
