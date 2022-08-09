class UrlShortenerService

  class << self

    def create_short_mapping!(url)
      attempts = 0
      begin
        key = generate_key
        Shortening.create!(url: url, key: key)
      rescue ActiveRecord::RecordNotUnique
        attempts += 1
        retry if attempts < 10
      end
    end

    def generate_key
      # 10 digits, using hexadecimal characters , gives us approx 158 billion unique permutations
      SecureRandom.hex(10)
    end

  end

end
