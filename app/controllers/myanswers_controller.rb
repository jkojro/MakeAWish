class MyanswersController < ApplicationController
    
    def new
      
    end
    
    def create
      @myanswer = Myanswer.new(myanswer_params)
        @myanswer.querry_id = params[:querry_id]
        @myanswer.user_id = current_user.id
        @myanswer.save

      redirect_to wish_path(@myanswer.querry.wish) 
    end

    def myanswer_params
      params.require(:myanswer).permit(:reply)
    end
end
