class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  # GET /countries
  # GET /countries.json
  def index
    @countries = Country.all
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries
  # POST /countries.json
  def create
    cc = Countries::CreateCountry.new(country_params)
    @country = cc.save
    if @country.persisted?
      flash[:success] = c_t('success.create')
      redirect_to @country
    else
      render :new
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    if Countries::UpdateCountry.new(@country, country_params).update
      flash[:success] = c_t('success.update')
      redirect_to @country
    else
      render :edit
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    Countries::DestroyCountry.new(@country).destroy
    flash[:success] = c_t('success.destroy')
    redirect_to countries_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @country = Country.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def country_params
    params.require(:country).permit(:country_id, :name)
  end
end
