class UserMappingsController < ApplicationController
  before_action :set_user_mapping, only: [:show, :edit, :update, :destroy]

  # GET /user_mappings
  # GET /user_mappings.json
  def index
    @user_mappings = UserMapping.all
  end

  # GET /user_mappings/1
  # GET /user_mappings/1.json
  def show
  end

  # GET /user_mappings/new
  def new
    @user_mapping = UserMapping.new
  end

  # GET /user_mappings/1/edit
  def edit
  end

  # POST /user_mappings
  # POST /user_mappings.json
  def create
    @user_mapping = UserMapping.new(user_mapping_params)

    respond_to do |format|
      if @user_mapping.save
        format.html { redirect_to user_mappings_path, notice: 'User mapping was successfully created.' }
        format.json { render :show, status: :created, location: @user_mapping }
      else
        format.html { render :new }
        format.json { render json: @user_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_mappings/1
  # PATCH/PUT /user_mappings/1.json
  def update
    respond_to do |format|
      if @user_mapping.update(user_mapping_params)
        format.html { redirect_to user_mappings_path, notice: 'User mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_mapping }
      else
        format.html { render :edit }
        format.json { render json: @user_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_mappings/1
  # DELETE /user_mappings/1.json
  def destroy
    @user_mapping.destroy
    respond_to do |format|
      format.html { redirect_to user_mappings_url, notice: 'User mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_mapping
      @user_mapping = UserMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_mapping_params
      params.require(:user_mapping).permit(:slack_name, :gerrit_name)
    end
end
