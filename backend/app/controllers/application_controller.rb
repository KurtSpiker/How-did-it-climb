class ApplicationController < ActionController::API
  include RenderHelper

  # Request body could not be parsed
  rescue_from ActionDispatch::Http::Parameters::ParseError,
   ActiveModelSerializers::Adapter::JsonApi::Deserialization::InvalidDocument,
    with: :render_invalid_document

  # Was expecting a parameter which was not provided
  rescue_from ActionController::ParameterMissing do |e|
    render_unprocessible_entity("parameters are missing", e)
  end

  rescue_from ActiveModel::ForbiddenAttributesError do |e|
    render_unprocessible_entity("unexpected attribute", e)
  end


  def request_data_attributes
      ActionController::Parameters.new(ActiveModelSerializers::Deserialization.jsonapi_parse!(params))
  end

end
