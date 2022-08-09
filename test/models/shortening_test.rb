require "test_helper"

class ShorteningTest < ActiveSupport::TestCase

  should validate_presence_of(:key)
  should validate_presence_of(:url)
  should validate_uniqueness_of(:key)

  should(
    allow_value(
      "http://example.com",
      "https://example.com",
      "http://subdomain.example.com/",
      "https://subdomain.example.com/",
      "http://subdomain.example.com:8080/",
      "https://subdomain.example.com:8080/",
      "http://example.com/?query=string&foo=bar",
      "http://example.com:8080/?query=string&foo=bar",
    ).for(:url)
  )
  should_not(
    allow_values(
      "ftp://www.example.com",
      "file:///etc/passwd",
      "ssh://www.example.com",
      "sftp://www.example.com",
      "postgres://www.example.com",
      "mysql://www.example.com",
      "redis://www.example.com",
      "www.example.com",
      "",
      nil
    ).for(:url)
  )

end
