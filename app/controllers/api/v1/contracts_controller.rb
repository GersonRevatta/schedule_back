class Api::V1::ContractsController < Api::V1::ApplicationController
  def index
    contracts = Contract.all
    filter_params.each_pair do |key, value|
      contracts = contracts.send("by_#{key}", value) if value.present?
    end
    render json: contracts.first
  end

  private
  def filter_params
    params.fetch(:filter, {}).permit(
      :client, :start_date, :end_date
    )    
  end
end