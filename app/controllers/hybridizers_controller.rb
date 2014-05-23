class HybridizersController < InheritedResources::Base
  before_action :set_hybridizer, only: [:show, :edit, :update, :destroy]

  def index
    @hybridizers = Hybridizer.all
  end

  def show
  end

  def new
    @hybridizer = Hybridizer.new
  end

  def edit
  end

  def create
    @hybridizer = Hybridizer.new(hybridizer_params)

    respond_to do |format|
      if @hybridizer.save
        format.html { redirect_to @hybridizer, notice: 'Successfully created hybridizer'}
      else
        format.html { render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @hybridizer.update(hybridizer_params)
        format.html {redirect_to @hybridizer, notice: 'Successfully updated hybridizer'}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @hybridizer.destroy
    respond_to do |format|
      format.html { redirect_to hybridizer_url, notice: 'hybridizer deleted'}
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hybridizer
      @hybridizer = Hybridizer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hybridizer_params
      params.require(:hybridizer).permit(:firstname, :lastname)
    end
end
