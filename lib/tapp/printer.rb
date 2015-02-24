require 'singleton'

module Tapp
  module Printer
    @printers = {}

    class << self
      def register(name, printer)
        @printers[name] = printer
      end

      def instance(name)
        @printers.fetch(name).instance
      end
    end

    class Base
      include Singleton

      def print(*args)
        raise NotImplementedError
      end
    end
  end
end
