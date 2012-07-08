module Tapp
  class Configuration
    attr_accessor :default_printer, :report_caller

    def initialize
      reset
    end

    def reset
      self.default_printer = :pretty_print
      self.report_caller   = false
    end
  end
end
