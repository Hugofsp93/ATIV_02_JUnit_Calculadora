class OrdenatorsController < ApplicationController
  before_action :set_ordenator, only: [:show, :edit, :update, :destroy]

  # GET /ordenators
  # GET /ordenators.json
  def index
    @ordenators = Ordenator.all
  end

  # GET /ordenators/1
  # GET /ordenators/1.json
  def show
  end

  # GET /ordenators/new
  def new
    @ordenator = Ordenator.new
  end

  # GET /ordenators/1/edit
  def edit
  end

  # POST /ordenators
  # POST /ordenators.json
  def create
    @ordenator = Ordenator.new(ordenator_params)

    respond_to do |format|
      if @ordenator.save
        format.html { redirect_to @ordenator, notice: 'Ordenator was successfully created.' }
        format.json { render :show, status: :created, location: @ordenator }
      else
        format.html { render :new }
        format.json { render json: @ordenator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenators/1
  # PATCH/PUT /ordenators/1.json
  def update
    respond_to do |format|
      if @ordenator.update(ordenator_params)
        format.html { redirect_to @ordenator, notice: 'Ordenator was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenator }
      else
        format.html { render :edit }
        format.json { render json: @ordenator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenators/1
  # DELETE /ordenators/1.json
  def destroy
    @ordenator.destroy
    respond_to do |format|
      format.html { redirect_to ordenators_url, notice: 'Ordenator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenator
      @ordenator = Ordenator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenator_params
      params.require(:ordenator).permit(:value)
    end
end
