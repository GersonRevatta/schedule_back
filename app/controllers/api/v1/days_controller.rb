class Api::V1::DaysController < Api::V1::ApplicationController
  def index
    render json: Day.all
  end
end
