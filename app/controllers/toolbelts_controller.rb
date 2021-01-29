class ToolbeltsController < ApplicationController
  before_action :set_toolbelt, only: [:show, :update, :destroy]

  # GET /toolbelts
  def index
    @toolbelts = Toolbelt.all

    render json: @toolbelts
  end

  # GET /toolbelts/1
  def show
    render json: @toolbelt
  end

  # POST /toolbelts
  def create
    @toolbelt = Toolbelt.new(toolbelt_params)

    if @toolbelt.save
      render json: @toolbelt, status: :created, location: @toolbelt
    else
      render json: @toolbelt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /toolbelts/1
  def update
    if @toolbelt.update(toolbelt_params)
      render json: @toolbelt
    else
      render json: @toolbelt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /toolbelts/1
  def destroy
    @toolbelt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toolbelt
      @toolbelt = Toolbelt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toolbelt_params
      params.require(:toolbelt).permit(:craftsman_id, :skill_id)
    end
end
