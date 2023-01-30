class DistributionsController < ApplicationController
  before_action :set_distribution, only: %i[ show update destroy ]

  # GET /distributions
  def index
    @distributions = Distribution.all

    render json: @distributions
  end

  # GET /distributions/1
  def show
    render json: @distribution
  end

  # POST /distributions
  def create
    @distribution = Distribution.new(distribution_params)

    if @distribution.save
      render json: @distribution, status: :created, location: @distribution
    else
      render json: @distribution.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /distributions/1
  def update
    if @distribution.update(distribution_params)
      render json: @distribution
    else
      render json: @distribution.errors, status: :unprocessable_entity
    end
  end

  # DELETE /distributions/1
  def destroy
    @distribution.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribution
      @distribution = Distribution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def distribution_params
      params.require(:distribution).permit(:amount)
    end
end
