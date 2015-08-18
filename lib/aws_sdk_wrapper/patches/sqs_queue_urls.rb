module Aws
  module Plugins
    # @api private
    class SQSQueueUrls < Seahorse::Client::Plugin
      # Monkey patch for local queue url
      class Handler < Seahorse::Client::Handler
        def update_region(context, url)
          region = url.to_s.split('.')[1]

          if region
            context.config = context.config.dup
            context.config.region = region
            context.config.sigv4_region = region
          elsif url.include?('localhost')
            return
          else
            fail ArgumentError, "invalid queue url `#{url}'"
          end
        end
      end
    end
  end
end
