module Tapp
  class Configuration
    attr_accessor :report_caller

    def initialize
      reset
    end

    def reset
      self.report_caller = false
    end
  end
end
