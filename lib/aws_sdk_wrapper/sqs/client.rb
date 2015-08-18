module AwsSDKWrapper
  module SQS
    #
    # = SQS client
    #
    class Client
      # Public: Constructor
      #
      #
      def initialize
        @client = AwsSDKWrapper::SQS.original_client
      end

      # Public: Create new queue
      #
      # :queue_name
      #   name of queue to be created
      def create_queue(queue_name)
        @client.create_queue(queue_name: queue_name)
      end

      # Public: Enqueue message to SQS
      #
      # :queue_url
      #   URL of target queue
      # :message
      #   Message to send
      def send_message(queue_url, message)
        @client.send_message(queue_url: queue_url, message_body: message)
      end

      # Public: Delete all messages
      #
      # :queue_url
      #   URL of target queue
      def purge_queue(queue_url)
        @client.purge_queue(queue_url: queue_url)
      end
    end
  end
end
