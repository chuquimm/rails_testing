class ApplicationController < ActionController::Base
  include LocalesHelper
  include SessionsHelper

  before_action :set_language

  def set_language
    I18n.locale = 'es-PE'
  end
end
