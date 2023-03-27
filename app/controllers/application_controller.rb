class ApplicationController < ActionController::API
    wrap_parameters format: []

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_message
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    private 
    def render_not_found_message
        render json: {error: "#{controller_name.classify} not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
