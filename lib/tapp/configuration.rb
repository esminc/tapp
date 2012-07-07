module Tapp
  class Configuration
    attr_accessor :report_caller

    def initialize
      self.report_caller = false
    end
  end
end
