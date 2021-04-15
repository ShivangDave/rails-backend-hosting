class ApplicationController < ActionController::API

  def home
    render json: { msg: 'If you see this then deployment worked :)'}
  end

end
