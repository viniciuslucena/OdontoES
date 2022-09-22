class AuthPageController < ApplicationController
  def index
    if admin_signed_in?
      redirect_to home_page_index_path
    elsif paciente_signed_in?
      redirect_to home_page_index_path
    elsif recepcionista_signed_in?
      redirect_to home_page_index_path
    end
  end
end
