class PagesController < ApplicationController

  def home
    @animals=Animal.all
  end


  def new
    authenticate()
  end


  def create
    @animal=Animal.new(get_animal_params)
    @animal.save
    redirect_to root_path
  end


  private
    def authenticate
      if user_signed_in?
        @animal=Animal.new
      else
        redirect_to new_user_session_path
      end
    end
    
    def get_animal_params
      @params=params.require(:animal).permit(:nick, :kind, :color, :weight, :description)
    end
end
