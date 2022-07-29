class Api::V1::AllottedHoursController < Api::V1::ApplicationController
  before_action :set_contract, only: [:create]

  def index
    allotted_hours = AllottedHour.all
    filter_params.each_pair do |key, value|
      allotted_hours = allotted_hours.send("by_#{key}", value) if value.present?
    end
    render json: allotted_hours
  end

  def create
    allotted_hour = @contract.allotted_hours.find_or_create_by(user_id: params[:user_id], contract_id: params[:contract_id])
    allotted_hour.update(hours: params[:hours])
    render json: allotted_hour, status: :ok
  end

  private

  def filter_params
    params.fetch(:filter, {}).permit(
      :contract, :user
    )
  end

  def set_contract
    @contract =  Contract.find(params[:contract_id])
  end
end
