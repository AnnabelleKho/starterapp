class OrgProfilesController < ApplicationController
  before_action :set_org_profile, only: [:show, :edit, :update, :destroy]
  layout 'admin', only: [:show, :index]
  # GET /org_profiles
  # GET /org_profiles.json
  def index
    @org_profiles = OrgProfile.all
  end

  # GET /org_profiles/1
  # GET /org_profiles/1.json
  def show
    @gig = Gig.new
  end

  # GET /org_profiles/new
  def new
    @org_profile = OrgProfile.new
  end

  # GET /org_profiles/1/edit
  def edit
  end

  # POST /org_profiles
  # POST /org_profiles.json
  def create
    @org_profile = OrgProfile.new(org_profile_params)
    @org_profile.user = current_user
    respond_to do |format|
      if @org_profile.save
        format.html { redirect_to @org_profile, notice: 'Org profile was successfully created.' }
        format.json { render :show, status: :created, location: @org_profile }
      else
        format.html { render :new }
        format.json { render json: @org_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /org_profiles/1
  # PATCH/PUT /org_profiles/1.json
  def update
    respond_to do |format|
      if @org_profile.update(org_profile_params)
        format.html { redirect_to @org_profile, notice: 'Org profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @org_profile }
      else
        format.html { render :edit }
        format.json { render json: @org_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_profiles/1
  # DELETE /org_profiles/1.json
  def destroy
    @org_profile.destroy
    respond_to do |format|
      format.html { redirect_to org_profiles_url, notice: 'Org profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_org_profile
      @org_profile = OrgProfile.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def org_profile_params
      params.require(:org_profile).permit(:user_id, :name, :logo, :contact_name, :contact_phone, :description, :slug, :link, :address, :suburb, :state, :postcode, :country, :longitude, :latitude)
    end
end
