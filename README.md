# Aws Sdk Wrapper

Wrapper of aws-sdk

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aws_sdk_wrapper', git: 'git@github.com:pocake/aws_sdk_wrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aws_sdk_wrapper

## Usage

### Configuration

```ruby
AwsSDKWrapper.configure do |config|
  # SQS settings
  config.sqs.access_key_id = "test"
  config.sqs.secret_access_key = "test"
  config.sqs.region = "local"
  config.sqs.endpoint = "http://localhost:9324"

  # S3 settings
  config.sqs.access_key_id = "test"
  config.sqs.secret_access_key = "test"
  config.sqs.region = "local"
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/aws_sdk_wrapper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
