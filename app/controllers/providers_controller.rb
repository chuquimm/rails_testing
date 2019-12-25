# frozen_string_literal: true

# Providers Controller
class ProvidersController < ApplicationController
  before_action :set_provider, only: %i[show edit update destroy]
  before_action :list_countries, only: %i[new edit create update]

  # GET /providers
  # GET /providers.json
  def index
    @providers = Provider.all
  end

  # GET /providers/1
  # GET /providers/1.json
  def show
  end

  # GET /providers/new
  def new
    @provider = Provider.new
  end

  # GET /providers/1/edit
  def edit
  end

  # POST /providers
  # POST /providers.json
  def create
    cp = Providers::CreateProvider.new(provider_params)
    @provider = cp.save
    if @provider.persisted?
      flash[:success] = c_t('success.create')
      redirect_to @provider
    else
      render :new
    end
  end

  # PATCH/PUT /providers/1
  # PATCH/PUT /providers/1.json
  def update
    if Providers::UpdateProvider.new(@provider, provider_params).update
      flash[:success] = c_t('success.update')
      redirect_to @provider
    else
      render :edit
    end
  end

  # DELETE /providers/1
  # DELETE /providers/1.json
  def destroy
    Providers::DestroyProvider.new(@crop).destroy
    flash[:success] = c_t('success.destroy')
    redirect_to providers_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_provider
    @provider = Provider.find(params[:id])
  end

  def list_countries
    @countries = Country.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def provider_params
    params.require(:provider).permit(:name,
                                     :country_id,
                                     :active,
                                     :delivery_condition,
                                     :return_policy)
  end
end
