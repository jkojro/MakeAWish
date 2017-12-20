class WishesController < ApplicationController
  before_action :set_wish, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, exept: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]


  def index
    @wishes = Wish.all
  end

  def show
      @querry = Querry.new
      @querry.wish_id = @wish.id
      
      @myanswer = Myanswer.new
      @myanswer.querry_id = @querry.id
      
      @myanswer.user_id = current_user.id
  end

  def new
      @wishes = Wish.all
    @wish = current_user.wishes.build
  end


  def edit
  end

  def create
    @wish = current_user.wishes.build(wish_params)
    @wish.isdone = false

    respond_to do |format|
      if @wish.save
        format.html { redirect_to @wish, notice: 'Wish was successfully created.' }
        format.json { render :show, status: :created, location: @wish }
      else
        format.html { render :new }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @wish.update(wish_params)
        format.html { redirect_to @wish, notice: 'Wish was successfully updated.' }
        format.json { render :show, status: :ok, location: @wish }
      else
        format.html { render :edit }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @wish.destroy
    respond_to do |format|
      format.html { redirect_to new_wish_path, notice: 'Wish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish
      @wish = Wish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wish_params
      params.require(:wish).permit(:name, :mywish, :user_id, :reciever)
    end
    
    def correct_user
        @wish = current_user.wishes.find_by(id: params[:id])
        redirect_to root_path, notice: "Nie jesteś uprawnina do edycji tego życzenia" if @wish.nil?
    end
end
