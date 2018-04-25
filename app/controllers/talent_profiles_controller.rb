class TalentProfilesController < ApplicationController
  before_action :set_talent_profile, only: [:show, :edit, :update, :destroy]
  before_action :only1profile, only: [:new]

  def only1profile
    unless current_user.talent_profile == nil
      flash[:alert] = 'You already have a profile!'
      redirect_to '/'
    end
  end

  # GET /talent_profiles
  # GET /talent_profiles.json
  def index
    @talent_profiles = TalentProfile.all
  end

  # GET /talent_profiles/1
  # GET /talent_profiles/1.json
  def show
  end

  # GET /talent_profiles/new
  def new
    @talent_profile = TalentProfile.new
    @talent_profile.user = current_user
  end

  # GET /talent_profiles/1/edit
  def edit
    @talent_profile.user = current_user
  end

  # POST /talent_profiles
  # POST /talent_profiles.json
  def create
    @talent_profile = TalentProfile.new(talent_profile_params)

    respond_to do |format|
      if @talent_profile.save
        format.html { redirect_to @talent_profile, notice: 'Talent profile was successfully created.' }
        format.json { render :show, status: :created, location: @talent_profile }
      else
        format.html { render :new }
        format.json { render json: @talent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /talent_profiles/1
  # PATCH/PUT /talent_profiles/1.json
  def update
    respond_to do |format|
      if @talent_profile.update(talent_profile_params)
        format.html { redirect_to @talent_profile, notice: 'Talent profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @talent_profile }
      else
        format.html { render :edit }
        format.json { render json: @talent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talent_profiles/1
  # DELETE /talent_profiles/1.json
  def destroy
    @talent_profile.destroy
    respond_to do |format|
      format.html { redirect_to talent_profiles_url, notice: 'Talent profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_talent_profile
      @talent_profile = TalentProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def talent_profile_params
      params.require(:talent_profile).permit(:username, :first_name, :middle_name, :last_name, :biography, :phone, :address, :address2, :city, :state, :zipcode, :sex, :birthday, :government_id, :topsuit, :waisthip, :pantlength, :eyecolor, :has_visible_tattoo, :user_id)
    end
end
