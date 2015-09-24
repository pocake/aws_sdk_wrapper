#
# = Aws SDK Wrapper
#
module AwsSDKWrapper
  # Public: Overwrite default configurations
  #
  # :&block
  def self.configure
    yield @config ||= AwsSDKWrapper::Configuration.new
  end

  # Returns global configurations
  def self.config
    @config
  end

  # Global configuration
  class Configuration
    attr_reader :access_key_id
    attr_writer :access_key_id

    attr_reader :secret_access_key
    attr_writer :secret_access_key

    attr_reader :sqs
    attr_writer :sqs

    attr_reader :s3
    attr_writer :s3

    # SQS Configuration
    class SQSConfiguration
      attr_reader :region
      attr_writer :region

      attr_reader :endpoint
      attr_writer :endpoint
    end

    class S3Configuration
      attr_reader :region
      attr_writer :region
    end

    def initialize
      self.sqs = SQSConfiguration.new
      self.s3  = S3Configuration.new
    end
  end

  # Default configuration
  configure do |config|
    config.access_key_id = "test"
    config.secret_access_key = "test"
    config.sqs.region = "local"
    config.sqs.endpoint = "http://localhost:9324"
    config.s3.region = "local"
  end
end
