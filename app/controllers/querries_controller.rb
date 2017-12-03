class QuerriesController < ApplicationController
  before_action :set_querry, only: [:show, :edit, :update, :destroy]

  # GET /querries
  # GET /querries.json
  def index
    @querries = Querry.all
  end

  # GET /querries/1
  # GET /querries/1.json
  def show
  end

  # GET /querries/new
  def new
    @querry = Querry.new

  end

  # GET /querries/1/edit
  def edit
  end

  # POST /querries
  # POST /querries.json
  def create
    @querry = Querry.new(querry_params)

    respond_to do |format|
      if @querry.save
        format.html { redirect_to @querry, notice: 'Querry was successfully created.' }
        format.json { render :show, status: :created, location: @querry }
      else
        format.html { render :new }
        format.json { render json: @querry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /querries/1
  # PATCH/PUT /querries/1.json
  def update
    respond_to do |format|
      if @querry.update(querry_params)
        format.html { redirect_to @querry, notice: 'Querry was successfully updated.' }
        format.json { render :show, status: :ok, location: @querry }
      else
        format.html { render :edit }
        format.json { render json: @querry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /querries/1
  # DELETE /querries/1.json
  def destroy
    @querry.destroy
    respond_to do |format|
      format.html { redirect_to querries_url, notice: 'Querry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_querry
      @querry = Querry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def querry_params
      params.require(:querry).permit(:question, :answer, :tip, :wish_id)
    end
end
