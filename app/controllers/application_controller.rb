class ApplicationController < ActionController::Base
  private
  def authenticate_admin!
    if current_user == nil
      redirect_to root_path, notice: 'Acceso denegado'
    elsif current_user.admin == false
      redirect_to root_path, notice: 'Acceso denegado'
    end
  end
end
