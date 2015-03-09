class RukuntetanggasController < ApplicationController
  before_action :set_rukuntetangga, only: [:show, :edit, :update, :destroy]

  # GET /rukuntetanggas
  # GET /rukuntetanggas.json
  def index
    @rukuntetanggas = Rukuntetangga.all
  end

  # GET /rukuntetanggas/1
  # GET /rukuntetanggas/1.json
  def show
  end

  # GET /rukuntetanggas/new
  def new
    @rukuntetangga = Rukuntetangga.new
  end

  # GET /rukuntetanggas/1/edit
  def edit
  end

  # POST /rukuntetanggas
  # POST /rukuntetanggas.json
  def create
    @rukuntetangga = Rukuntetangga.new(rukuntetangga_params)

    respond_to do |format|
      if @rukuntetangga.save
        format.html { redirect_to @rukuntetangga, notice: 'Rukuntetangga was successfully created.' }
        format.json { render :show, status: :created, location: @rukuntetangga }
      else
        format.html { render :new }
        format.json { render json: @rukuntetangga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rukuntetanggas/1
  # PATCH/PUT /rukuntetanggas/1.json
  def update
    respond_to do |format|
      if @rukuntetangga.update(rukuntetangga_params)
        format.html { redirect_to @rukuntetangga, notice: 'Rukuntetangga was successfully updated.' }
        format.json { render :show, status: :ok, location: @rukuntetangga }
      else
        format.html { render :edit }
        format.json { render json: @rukuntetangga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rukuntetanggas/1
  # DELETE /rukuntetanggas/1.json
  def destroy
    @rukuntetangga.destroy
    respond_to do |format|
      format.html { redirect_to rukuntetanggas_url, notice: 'Rukuntetangga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rukuntetangga
      @rukuntetangga = Rukuntetangga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rukuntetangga_params
      params.require(:rukuntetangga).permit(:name)
    end
end
