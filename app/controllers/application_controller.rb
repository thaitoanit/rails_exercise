class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  private
  def record_not_found
    # render plain: "Record Not Found", status: 404
    render json: { error: "Record not found", success: false }, status: 501
  end
end
