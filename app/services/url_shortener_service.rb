class UrlShortenerService

  class << self

    def create_short_mapping!(url)
      key = generate_key
      Shortening.create!(url: url, key: key)
    rescue ActiveRecord::RecordNotUnique
      retry
    end

    def generate_key
      # 10 digits, using hexadecimal characters , gives us approx 158 billion unique permutations
      SecureRandom.hex(10)
    end

  end

end
