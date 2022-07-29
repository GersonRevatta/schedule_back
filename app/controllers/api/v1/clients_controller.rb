class Api::V1::ClientsController < Api::V1::ApplicationController
  def index
    render json: Client.all
  end
end
