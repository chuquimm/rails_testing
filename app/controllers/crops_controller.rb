# frozen_string_literal: true

# Crops Controller
class CropsController < ApplicationController
  before_action :set_crop, only: %i[show edit update destroy]

  # GET /crops
  # GET /crops.json
  def index
    @crops = Crop.all
  end

  # GET /crops/1
  # GET /crops/1.json
  def show
  end

  # GET /crops/new
  def new
    @crop = Crop.new
  end

  # GET /crops/1/edit
  def edit
  end

  # POST /crops
  # POST /crops.json
  def create
    cc = Crops::CreateCrop.new(crop_params)
    @crop = cc.save
    if @crop.persisted?
      flash[:success] = c_t('success.create')
      redirect_to @crop
    else
      render :new
    end
  end

  # PATCH/PUT /crops/1
  # PATCH/PUT /crops/1.json
  def update
    if Crops::UpdateCrop.new(@crop, crop_params).update
      flash[:success] = c_t('success.update')
      redirect_to @crop
    else
      render :edit
    end
  end

  # DELETE /crops/1
  # DELETE /crops/1.json
  def destroy
    Crops::DestroyCrop.new(@crop).destroy
    flash[:success] = c_t('success.destroy')
    redirect_to crops_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_crop
    @crop = Crop.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def crop_params
    params.require(:crop).permit(:name)
  end
end
