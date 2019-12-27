# frozen_string_literal: true

# Sessions Controller
class SessionsController < ApplicationController
  before_action :force_log_out, only: %i[create_admin destroy_admin]
  before_action :set_admin, only: %i[create_admin]
  def new_admin
    admin_logged_in? ? redirect_to(admins_path) : render(layout: 'login_admin')
  end

  def create_admin
    if @admin&.authenticate(params[:session][:password])
      log_in_admin @admin
      redirect_to admins_path
    else
      redirect_to new_admin_session_path,flash: {danger: c_t('error.wrong_user_id_or_pass')}
    end
  end

  def destroy_admin
    redirect_to admins_path
  end

  private

  def set_admin
    @admin = Admin.find_by(admin_id: params[:session][:admin_id])
  end

  def force_log_out
    log_out
  end
end
