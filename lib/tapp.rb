require 'tapp/configuration'
require 'tapp/deprecated'
require 'tapp/object_extension'
require 'tapp/printer'

module Tapp
  extend Deprecated

  class << self
    def config
      @config ||= Tapp::Configuration.new
    end

    def configure
      yield config

      config
    end
  end
end

Object.__send__ :include, Tapp::ObjectExtension
