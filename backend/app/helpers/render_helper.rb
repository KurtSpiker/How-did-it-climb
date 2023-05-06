module RenderHelper
  def render_object(record)
    if record.nil?
      return render_not_found
    end
    render json: record, status: :ok
  end

  def render_not_found
    render json: {errors: [{status: "404", title: "not found"}]}, status: :not_found
  end

  def save_and_render(record)
    return render_validation_errors(record) if record.invalid?

    if record.save
      render json: record, status: :created
    else
      render_server_error
    end
  end

  def render_server_error(exception = nil)
    err = {status: :internal_server_error, title: "Server error"}
    if exception.present?
      err[:detail] = exception.to_s
    end
    render json: err, status: :internal_server_error
  end

  def render_validation_errors(record)
    errors = []

    record.errors.messages.each do |attribute, validation_errors|
      validation_errors.each do |validation_error|
        errors << invalid_attribute_error(attribute, "#{attribute} #{validation_error}")
      end
    end
    render json: {errors: errors}, status: :unprocessable_entity
  end

  def invalid_attribute_error(attribute, message)
    err = {title: "Invalid Attribute", status: "422", defail: message}
    err[:source] = {pointer: "/data/attrubutes/#{attribute.to_s.dasherize}"}
    return err
  end

  def render_invalid_document
    render json: { errors: [{ status: "400", title: "invalid document"}]}, status: :bad_request
  end

  def render_unprocessible_entity(title, err)
    render json: {errors: {status: "422", title: title, detail: err.to_s}}, status: :unprocessable_entity
  end
end
