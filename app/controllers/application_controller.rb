class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :footer_presence
  before_action :find_general_chat

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :avatar])
  end

  def footer_presence
    @footer = !((params[:controller] == 'pages' && params[:action] == 'dashboard') ||
      (params[:controller] == 'pets' && params[:action] == 'show') ||
      (params[:controller] == 'chatrooms' && params[:action] == 'chatroom'))
  end

  def find_general_chat
    @general = Chatroom.find_by(name:"general")
  end
end
