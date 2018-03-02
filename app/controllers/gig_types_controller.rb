class GigTypesController < ApplicationController
  before_action :set_gig_type, only: [:show, :edit, :update, :destroy]

  # GET /gig_types
  # GET /gig_types.json
  def index
    @gig_types = GigType.all
  end

  # GET /gig_types/1
  # GET /gig_types/1.json
  def show
  end

  # GET /gig_types/new
  def new
    @gig_type = GigType.new
  end

  # GET /gig_types/1/edit
  def edit
  end

  # POST /gig_types
  # POST /gig_types.json
  def create
    @gig_type = GigType.new(gig_type_params)

    respond_to do |format|
      if @gig_type.save
        format.html { redirect_to @gig_type, notice: 'Gig type was successfully created.' }
        format.json { render :show, status: :created, location: @gig_type }
      else
        format.html { render :new }
        format.json { render json: @gig_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gig_types/1
  # PATCH/PUT /gig_types/1.json
  def update
    respond_to do |format|
      if @gig_type.update(gig_type_params)
        format.html { redirect_to @gig_type, notice: 'Gig type was successfully updated.' }
        format.json { render :show, status: :ok, location: @gig_type }
      else
        format.html { render :edit }
        format.json { render json: @gig_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gig_types/1
  # DELETE /gig_types/1.json
  def destroy
    @gig_type.destroy
    respond_to do |format|
      format.html { redirect_to gig_types_url, notice: 'Gig type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gig_type
      @gig_type = GigType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gig_type_params
      params.require(:gig_type).permit(:icon, :name, :description, :color)
    end
end
