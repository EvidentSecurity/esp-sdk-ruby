module InitializeDefaults
  def initialize
    super do |config|
      if ENV['ESP_ENV'] || ENV['RAILS_ENV'] == 'development'
        config.scheme = 'http'
        config.host   = 'localhost:3000'
      else
        config.scheme = 'https'
        config.host   = 'api.evident.io'
      end
    end
    yield(self) if block_given?
  end
end

module ESP
  class Configuration
    prepend InitializeDefaults
  end
end
