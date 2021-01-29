class CraftsmenController < ApplicationController
  before_action :set_craftsman, only: [:show, :update, :destroy]

  # GET /craftsmen
  def index
    @craftsmen = Craftsman.all

    render json: @craftsmen
  end

  # GET /craftsmen/1
  def show
    render json: @craftsman
  end

  # POST /craftsmen
  def create
    @craftsman = Craftsman.new(craftsman_params)

    if @craftsman.save
      render json: @craftsman, status: :created, location: @craftsman
    else
      render json: @craftsman.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /craftsmen/1
  def update
    if @craftsman.update(craftsman_params)
      render json: @craftsman
    else
      render json: @craftsman.errors, status: :unprocessable_entity
    end
  end

  # DELETE /craftsmen/1
  def destroy
    @craftsman.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_craftsman
      @craftsman = Craftsman.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def craftsman_params
      params.require(:craftsman).permit(:name, :email, :phone_number, :city, :state, :bio, :website, :open_to_work)
    end
end
