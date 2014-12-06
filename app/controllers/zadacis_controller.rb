class ZadacisController < ApplicationController

  before_action :authenticate_user!
  before_action :set_zadaci, only: [:show, :edit, :update, :destroy]

  # GET /zadacis
  # GET /zadacis.json
  def index
    @zadacis = Zadaci.paginate(:page => params[:page], :per_page => 10).search(params[:search])
    # @zadacis = Zadaci.all
  end

  # GET /zadacis/1
  # GET /zadacis/1.json
  def show
  end

  # GET /zadacis/new
  def new
    @zadaci = Zadaci.new
  end

  # GET /zadacis/1/edit
  def edit
  end

  # POST /zadacis
  # POST /zadacis.json
  def create
    @zadaci = Zadaci.new(zadaci_params)

    respond_to do |format|
      if @zadaci.save
        format.html { redirect_to @zadaci, notice: 'Zadaci was successfully created.' }
        format.json { render action: 'show', status: :created, location: @zadaci }
      else
        format.html { render action: 'new' }
        format.json { render json: @zadaci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zadacis/1
  # PATCH/PUT /zadacis/1.json
  def update
    respond_to do |format|
      if @zadaci.update(zadaci_params)
        format.html { redirect_to @zadaci, notice: 'Zadaci was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @zadaci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zadacis/1
  # DELETE /zadacis/1.json
  def destroy
    @zadaci.destroy
    respond_to do |format|
      format.html { redirect_to zadacis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zadaci
      @zadaci = Zadaci.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zadaci_params
      params.require(:zadaci).permit(:razred, :oblast, :opis, :zadatak)
    end
end
