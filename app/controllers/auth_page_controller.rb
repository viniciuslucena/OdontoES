class AuthPageController < ApplicationController
  def index
    if admin_signed_in?
      redirect_to home_page_index_path
    end
    if paciente_signed_in?
      redirect_to home_page_index_path
    end
  end
end
