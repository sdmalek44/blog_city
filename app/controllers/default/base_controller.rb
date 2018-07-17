class Default::BaseController < ApplicationController
  before_action :require_user

  private

  def require_user
    render file: "/public/404" unless current_user || current_admin?
  end
end
