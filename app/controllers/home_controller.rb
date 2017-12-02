class HomeController < ApplicationController
  def index
  end
  
  def wishlist
      @wishes = Wish.all
  end
  


end
