class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    ca = Admins::CreateAdmin.new(admin_params)
    @admin = ca.save
    if @admin.persisted?
      flash[:success] = c_t('success.create')
      redirect_to @admin
    else
      render :new
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    if Admins::UpdateAdmin.new(@admin, admin_params).update
      flash[:success] = c_t('success.update')
      redirect_to @admin
    else
      render :edit
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    Admins::DestroyAdmin.new(@admin).destroy
    flash[:success] = c_t('success.destroy')
    redirect_to admins_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:admin_id, :password, :password_confirmation, :name, :root)
    end
end
