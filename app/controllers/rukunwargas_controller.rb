class RukunwargasController < ApplicationController
  before_action :set_rukunwarga, only: [:show, :edit, :update, :destroy]

  # GET /rukunwargas
  # GET /rukunwargas.json
  def index
    @rukunwargas = Rukunwarga.all
  end

  # GET /rukunwargas/1
  # GET /rukunwargas/1.json
  def show
  end

  # GET /rukunwargas/new
  def new
    @rukunwarga = Rukunwarga.new
  end

  # GET /rukunwargas/1/edit
  def edit
  end

  # POST /rukunwargas
  # POST /rukunwargas.json
  def create
    @rukunwarga = Rukunwarga.new(rukunwarga_params)

    respond_to do |format|
      if @rukunwarga.save
        format.html { redirect_to @rukunwarga, notice: 'Rukunwarga was successfully created.' }
        format.json { render :show, status: :created, location: @rukunwarga }
      else
        format.html { render :new }
        format.json { render json: @rukunwarga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rukunwargas/1
  # PATCH/PUT /rukunwargas/1.json
  def update
    respond_to do |format|
      if @rukunwarga.update(rukunwarga_params)
        format.html { redirect_to @rukunwarga, notice: 'Rukunwarga was successfully updated.' }
        format.json { render :show, status: :ok, location: @rukunwarga }
      else
        format.html { render :edit }
        format.json { render json: @rukunwarga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rukunwargas/1
  # DELETE /rukunwargas/1.json
  def destroy
    @rukunwarga.destroy
    respond_to do |format|
      format.html { redirect_to rukunwargas_url, notice: 'Rukunwarga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rukunwarga
      @rukunwarga = Rukunwarga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rukunwarga_params
      params.require(:rukunwarga).permit(:name)
    end
end
