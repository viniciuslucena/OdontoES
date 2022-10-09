class AuthPageController < ApplicationController
  def index
    if verify_if_logged_in
      redirect_to home_page_index_path
    end
  end

  private

  def verify_if_logged_in
    if admin_signed_in?
      return true
    elsif paciente_signed_in?
      return true
    elsif recepcionista_signed_in?
      return true
    end

  end
end
