 class KontaktsController < ApplicationController
  before_action :set_kontakt, only: [:show, :edit, :update, :destroy]

  # GET /kontakts
  # GET /kontakts.json
  def index
    @time = Time.now
    @kontakts = Kontakt.all
  end

  # GET /kontakts/1
  # GET /kontakts/1.json
  def show
  end

  # GET /kontakts/new
  def new
    @kontakt = Kontakt.new
  end

  # GET /kontakts/1/edit
  def edit
  end

  # POST /kontakts
  # POST /kontakts.json
  def create
    @kontakt = Kontakt.new(kontakt_params)

    respond_to do |format|
      if @kontakt.save
        format.html { redirect_to @kontakt, notice: 'Kontakt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kontakt }
      else
        format.html { render action: 'new' }
        format.json { render json: @kontakt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kontakts/1
  # PATCH/PUT /kontakts/1.json
  def update
    respond_to do |format|
      if @kontakt.update(kontakt_params)
        format.html { redirect_to @kontakt, notice: 'Kontakt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kontakt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kontakts/1
  # DELETE /kontakts/1.json
  def destroy
    @kontakt.destroy
    respond_to do |format|
      format.html { redirect_to kontakts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kontakt
      @kontakt = Kontakt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kontakt_params
      params.require(:kontakt).permit(:ime, :prezime, :email, :a_email, :poruka)
    end
end
