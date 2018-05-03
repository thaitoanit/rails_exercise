class Api::V1::DevelopersController < ApplicationController
  before_action :developer, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/developers
  def index
    @api_v1_developers = Api::V1::Developer.all
  end

  # GET /api/v1/developers/1
  def show
    render json: @developer, serializer: DeveloperSerializer, status: 200
  end

  # GET /api/v1/developers/new
  def new
    @api_v1_developer = Api::V1::Developer.new
  end

  # GET /api/v1/developers/1/edit
  def edit
  end

  # POST /api/v1/developers
  def create
    @api_v1_developer = Api::V1::Developer.new(api_v1_developer_params)

    if @api_v1_developer.save
      redirect_to @api_v1_developer, notice: 'Developer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /api/v1/developers/1
  def update
    if @api_v1_developer.update(api_v1_developer_params)
      redirect_to @api_v1_developer, notice: 'Developer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /api/v1/developers/1
  def destroy
    @api_v1_developer.destroy
    redirect_to api_v1_developers_url, notice: 'Developer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def developer
      @developer = Developer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_developer_params
      params.fetch(:api_v1_developer, {})
    end
end
