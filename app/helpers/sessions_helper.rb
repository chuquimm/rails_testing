# frozen_string_literal: true

# Sessions helper
module SessionsHelper
  # create session
  def log_in_admin(admin)
    session[:admin_connected_id] = admin.id
  end

  # return admin connected
  def admin_connected
    Admin.find_by(id: session[:admin_connected_id])
  end

  # return true if an admin is connected
  def admin_logged_in?
    !admin_connected.nil?
  end

  # redirects to login if not authenticated as admin
  def authenticate_admin
    redirect_to new_admin_session_path unless admin_logged_in?
  end

  def log_out
    reset_session
  end
end
