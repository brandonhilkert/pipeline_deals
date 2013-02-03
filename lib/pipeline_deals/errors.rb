module PipelineDeals
  # Custom error class for rescuing from all PipelineDeals errors
  class Errors < StandardError; end

  # Raised when PipelineDeals returns the HTTP status code 400
  class BadRequest < Errors; end

  # Raised when PipelineDeals returns the HTTP status code 404
  class NotFound < Errors; end

  # Raised when PipelineDeals returns the HTTP status code 500
  class InternalServerError < Errors; end

  # Raised when PipelineDeals returns the HTTP status code 503
  class ServiceUnavailable < Errors; end

  # Raised when a subscription payload hash is invalid
  class InvalidSignature < Errors; end

  # Raised when an api_key is not configured
  class MissingApiKey < Errors; end
end