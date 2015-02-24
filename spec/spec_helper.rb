require 'tapp'
require 'tapp/turnip'

RSpec.configure do |config|
  config.include Tapp::Turnip::Steps

  config.expect_with :rspec do |expects|
    expects.syntax = :should
  end

  config.before do
    Tapp.config.reset
  end
end
