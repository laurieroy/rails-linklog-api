require 'jsonapi_errors_handler'

class ApplicationController < ActionController::API
	include JsonapiErrorsHandler

  ErrorMapper.map_errors!({
			'ActiveRecord::RecordNotFound' => 'JsonapiErrorsHandler::Errors::NotFound',
			'ActiveRecord::RecordInvalid' => 'JsonapiErrorsHandler::Errors::Invalid',
			'ApplicationController::AuthorizationError' => 'JsonapiErrorsHandler::Errors::Forbidden'
	})

	rescue_from ::StandardError, with: lambda { |e| handle_error(e) }
  rescue_from ActiveRecord::RecordInvalid, with: :handle_validation_error

	private

	def handle_validation_error(error)
		error_model = error.try(:model) || error.try(:record)	
    render_error(
      JsonapiErrorsHandler::Errors::Invalid.new(errors: error_model.errors)
    )

	end
end
