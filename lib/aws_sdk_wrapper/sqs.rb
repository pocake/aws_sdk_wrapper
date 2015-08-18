module AwsSDKWrapper
  #
  # = SQS
  #
  module SQS
    protected

    # Internal: SQS client of original Aws SDK
    #
    # Returns SQS client of original Aws SDK
    def self.original_client
      Aws::SQS::Client.new(
        region: AwsSDKWrapper.config.sqs.region,
        endpoint: AwsSDKWrapper.config.sqs.endpoint,
        credentials: Aws::Credentials.new(AwsSDKWrapper.config.access_key_id, AwsSDKWrapper.config.secret_access_key)
      )
    end
  end
end
