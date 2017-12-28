class AnimalsController < ApplicationController
  Time::DATE_FORMATS[:post] = "-- %d/%b/%Y - %I:%M%p"

  def new
      @animal = Animal.new

  end


  def create
    @animal = Animal.new(get_animal_params)

    if @animal.save
      redirect_to root_path
    end

  end

  def details
    @animal = Animal.find(get_id_param)
    @adopt = authenticate

    @comment = Comment.new
    @comments = Comment.all
    @user = User.all
  end

  private
     def authenticate
       if user_signed_in?
         true
       else
         false
       end
     end

    def get_animal_params
      @params = params.require(:animal).permit(:nick, :kind, :color, :weight, :description)
    end

    def get_id_param
      @param = params.require(:id)
    end

end
