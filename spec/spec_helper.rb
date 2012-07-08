require 'tapp'
require 'tapp/turnip'

RSpec.configure do |config|
  config.include Tapp::Turnip::Steps

  config.before do
    Tapp.config.reset
  end
end
