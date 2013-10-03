class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def flash_message
    flash.now[params[:type]] = params[:msg] if params[:type].present? && params[:msg].present?
    render partial: 'flash', locals: { flash: flash }
  end

end
