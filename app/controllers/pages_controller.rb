class PagesController < ApplicationController


  def home
    @animals=Animal.all
  end




end
