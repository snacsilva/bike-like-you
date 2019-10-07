class Api::V1::SessionsController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, only: [ :destroy]

  def create
    def create
      user = User.find_by_email(params[:email])
  
      if user && user.valid_password?(params[:password])
        render json: @current_user = user
      else
        render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
      end
    end
  end
  
  def destroy
    sign_out(resource_name)
  end

end
