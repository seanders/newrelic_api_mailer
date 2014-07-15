class ApplicationController < ActionController::Base
  rescue_from ActionController::ParameterMissing do |e|
    render text: e.message, status: :unprocessable_entity
  end

  def not_found
    render nothing: true, status: :not_found
  end
end
