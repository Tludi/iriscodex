class IrisController < ApplicationController
  before_action :set_iri, only: [:show, :edit, :update, :destroy]

  # GET /iris
  # GET /iris.json
  def index
    @iris = Iri.all
  end

  # GET /iris/1
  # GET /iris/1.json
  def show
  end

  # GET /iris/new
  def new
    @iri = Iri.new
  end

  # GET /iris/1/edit
  def edit
  end

  # POST /iris
  # POST /iris.json
  def create
    @iri = Iri.new(iri_params)

    respond_to do |format|
      if @iri.save
        format.html { redirect_to @iri, notice: 'Iri was successfully created.' }
        format.json { render :show, status: :created, location: @iri }
      else
        format.html { render :new }
        format.json { render json: @iri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iris/1
  # PATCH/PUT /iris/1.json
  def update
    respond_to do |format|
      if @iri.update(iri_params)
        format.html { redirect_to @iri, notice: 'Iri was successfully updated.' }
        format.json { render :show, status: :ok, location: @iri }
      else
        format.html { render :edit }
        format.json { render json: @iri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iris/1
  # DELETE /iris/1.json
  def destroy
    @iri.destroy
    respond_to do |format|
      format.html { redirect_to iris_url, notice: 'Iri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iri
      @iri = Iri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iri_params
      params.require(:iri).permit(:hybridizer, :region, :name, :year, :seedling)
    end
end
