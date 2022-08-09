class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.present? && self.class.http_url?(value)
      record.errors.add(attribute, "is not a valid URL")
    end
  end

  def self.http_url?(value)
    uri = URI.parse(value)

    # URI::HTTPS is a subclass of URI::HTTP, so urls using either schema will return true for the following.
    uri.is_a?(URI::HTTP) && !uri.host.nil?
  rescue URI::InvalidURIError
    false
  end

end
