class IkbcsController < ApplicationController
  before_action :set_ikbc, only: [:show, :edit, :update, :destroy]

  # GET /ikbcs
  # GET /ikbcs.json
  def index
    @ikbcs = Ikbc.all
  end

  # GET /ikbcs/1
  # GET /ikbcs/1.json
  def show
  end

  # GET /ikbcs/new
  def new
    @ikbc = Ikbc.new
  end

  # GET /ikbcs/1/edit
  def edit
  end

  # POST /ikbcs
  # POST /ikbcs.json
  def create
    @ikbc = Ikbc.new(ikbc_params)

    respond_to do |format|
      if @ikbc.save
        format.html { redirect_to @ikbc, notice: 'Ikbc was successfully created.' }
        format.json { render :show, status: :created, location: @ikbc }
      else
        format.html { render :new }
        format.json { render json: @ikbc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ikbcs/1
  # PATCH/PUT /ikbcs/1.json
  def update
    respond_to do |format|
      if @ikbc.update(ikbc_params)
        format.html { redirect_to @ikbc, notice: 'Ikbc was successfully updated.' }
        format.json { render :show, status: :ok, location: @ikbc }
      else
        format.html { render :edit }
        format.json { render json: @ikbc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ikbcs/1
  # DELETE /ikbcs/1.json
  def destroy
    @ikbc.destroy
    respond_to do |format|
      format.html { redirect_to ikbcs_url, notice: 'Ikbc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ikbc
      @ikbc = Ikbc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ikbc_params
      params.require(:ikbc).permit(:keybord, :mouse)
    end
end
