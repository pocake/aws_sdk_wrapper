module AwsSDKWrapper
  module SQS
    #
    # = Queue poller
    #
    class QueuePoller
      # Public: Constructor
      #
      # :queue_url
      #   URL of queue
      def initialize(queue_url, options = {})
        options[:client] = AwsSDKWrapper::SQS.original_client
        @poller = Aws::SQS::QueuePoller.new(queue_url, options)
      end

      # Public: Set before_request callback
      #
      # :&block
      #   Callback block
      def before_request(&block)
        @poller.before_request(&block)
      end

      # Public: Polling
      #
      # see also
      # http://docs.aws.amazon.com/sdkforruby/api/Aws/SQS/QueuePoller.html#poll-instance_method
      #
      # :options
      #   Polling options
      def poll(options = {}, &block)
        @poller.poll(options, &block)
      end
    end
  end
end
