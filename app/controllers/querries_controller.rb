class QuerriesController < ApplicationController
    
    def create
        @querry = Querry.new(querry_params)
        @querry.wish_id = params[:wish_id]
        
        @querry.save
        
        redirect_to wish_path(@querry.wish)
    end
    
    def querry_params
        params.require(:querry).permit(:question, :answer, :tip)
    end
    
end
