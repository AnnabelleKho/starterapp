class FreelancerProfilesController < ApplicationController
  before_action :set_freelancer_profile, only: [:show, :edit, :update, :destroy]

  # GET /freelancer_profiles
  # GET /freelancer_profiles.json
  def index
    @freelancer_profiles = FreelancerProfile.all
  end

  # GET /freelancer_profiles/1
  # GET /freelancer_profiles/1.json
  def show
    @link = Link.new
  end

  # GET /freelancer_profiles/new
  def new
    @freelancer_profile = FreelancerProfile.new
  end

  # GET /freelancer_profiles/1/edit
  def edit
  end

  # POST /freelancer_profiles
  # POST /freelancer_profiles.json
  def create
    @freelancer_profile = FreelancerProfile.new(freelancer_profile_params)
    @freelancer_profile.user = current_user
    respond_to do |format|
      if @freelancer_profile.save
        format.html { redirect_to @freelancer_profile, notice: 'Freelancer profile was successfully created.' }
        format.json { render :show, status: :created, location: @freelancer_profile }
      else
        format.html { render :new }
        format.json { render json: @freelancer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freelancer_profiles/1
  # PATCH/PUT /freelancer_profiles/1.json
  def update
    respond_to do |format|
      if @freelancer_profile.update(freelancer_profile_params)
        format.html { redirect_to @freelancer_profile, notice: 'Freelancer profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @freelancer_profile }
      else
        format.html { render :edit }
        format.json { render json: @freelancer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freelancer_profiles/1
  # DELETE /freelancer_profiles/1.json
  def destroy
    @freelancer_profile.destroy
    respond_to do |format|
      format.html { redirect_to freelancer_profiles_url, notice: 'Freelancer profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freelancer_profile
      @freelancer_profile = FreelancerProfile.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freelancer_profile_params
      params.require(:freelancer_profile).permit(:user_id, :first_name, :last_name, :phone, :suburb, :postcode, :country, :latitude, :longitude, :picture, :bio)
    end
end
