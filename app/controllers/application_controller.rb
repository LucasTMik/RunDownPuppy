class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #autenticar antes de ação menos na home
  before_action :authenticate_user!, except: [:home,:details]
end
