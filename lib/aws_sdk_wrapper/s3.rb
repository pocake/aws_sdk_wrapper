module AwsSDKWrapper
  module S3
    protected

    # Internal: S3 client of original Aws SDK
    #
    # Returns S3 client of original Aws SDK
    def self.original_client
      Aws::S3::Client.new(
        region: AwsSDKWrapper.config.s3.region,
        credentials: Aws::Credentials.new(AwsSDKWrapper.config.s3.access_key_id,
                                          AwsSDKWrapper.config.s3.secret_access_key)
      )
    end
  end
end
