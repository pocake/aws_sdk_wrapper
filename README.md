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
  # Global common settings
  config.access_key_id = "test"
  config.secret_access_key = "test"

  # SQS settings
  config.sqs.region = "local"
  config.sqs.endpoint = "http://localhost:9324"
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/aws-sdk-wrapper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
