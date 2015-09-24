module AwsSDKWrapper
  #
  # = S3
  #
  module S3
    #
    # = S3 client
    #
    class Client
      # Public: Constructor
      #
      #
      def initialize
        @client = Aws::S3::Resource.new(client: AwsSDKWrapper::S3.original_client)
      end

      # Public: Create new queue
      #
      # :bucket_name
      #   bucket name
      # :key
      #   object jey
      # :path
      #   upload file path
      def upload_file(bucket_name, key, path)
        obj = @client.bucket(bucket_name).object(key)
        obj.upload_file(path)
      end
    end
  end
end
