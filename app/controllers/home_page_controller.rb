class HomePageController < ApplicationController
  before_action :require_login
  def index
  end

  def require_login
    unless admin_signed_in? or paciente_signed_in?
      redirect_to auth_page_index_path
    end
  end
end
