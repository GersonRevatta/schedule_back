class Api::V1::ApplicationController < ActionController::Base
	include DeviseTokenAuth::Concerns::SetUserByToken
	protect_from_forgery unless: -> { request.format.json? }
	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		params.delete_if { |_key, value| value.blank? }
	end
end
