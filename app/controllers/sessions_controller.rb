# frozen_string_literal: true

# Sessions Controller
class SessionsController < ApplicationController
  before_action :set_admin, only: %i[create_admin]
  def new_admin
    render(layout: 'login_admin')
  end

  def create_admin
    if @admin&.authenticate(params[:session][:password])
      redirect_to admins_path
    else
      redirect_to new_admin_session_path,flash: {danger: c_t('error.wrong_user_id_or_pass')}
    end
  end

  private

  def set_admin
    @admin = Admin.find_by(admin_id: params[:session][:admin_id])
  end
end
