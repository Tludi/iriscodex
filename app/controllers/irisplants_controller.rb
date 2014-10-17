class IrisplantsController < ApplicationController
  before_action :set_irisplant, only: [:show, :edit, :update, :destroy]
  has_scope :sibtype

  # GET /irisplants
  # GET /irisplants.json
  def index
    @hybridizers = Hybridizer.order(lastname: :asc)

    if params[:iristype]
      @irisplants = Irisplant.all.where(iristype: params[:iristype])
    elsif params[:hybridizer]
      @irisplants = Irisplant.where(:hybridizer_id => params[:hybridizer])
    else
      @irisplants = Irisplant.all
    end
    # @irisplants = apply_scopes(Irisplant).all
  end

  # GET /irisplants/1
  # GET /irisplants/1.json
  def show
  end

  # GET /irisplants/new
  def new
    @irisplant = Irisplant.new
    @gardens = ["Aitken", "Mt Pleasant", "Miller", "Wild", "Mid America", "Schreiners"]
  end

  # GET /irisplants/1/edit
  def edit
  end

  # POST /irisplants
  # POST /irisplants.json
  def create
    @irisplant = Irisplant.new(irisplant_params)

    respond_to do |format|
      if @irisplant.save
        format.html { redirect_to @irisplant, notice: 'Irisplant was successfully created.' }
        format.json { render :show, status: :created, location: @irisplant }
      else
        format.html { render :new }
        format.json { render json: @irisplant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irisplants/1
  # PATCH/PUT /irisplants/1.json
  def update
    respond_to do |format|
      if @irisplant.update(irisplant_params)
        format.html { redirect_to @irisplant, notice: 'Irisplant was successfully updated.' }
        format.json { render :show, status: :ok, location: @irisplant }
      else
        format.html { render :edit }
        format.json { render json: @irisplant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irisplants/1
  # DELETE /irisplants/1.json
  def destroy
    @irisplant.destroy
    respond_to do |format|
      format.html { redirect_to irisplants_url, notice: 'Irisplant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irisplant
      @irisplant = Irisplant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def irisplant_params
      params.require(:irisplant).permit(:hybridizer_id, :name, :region, :year, :image_url, :iristype, :garden)
    end
end
