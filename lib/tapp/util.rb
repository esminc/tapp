require 'tapp'

module Tapp
  module Util
    module_function

    def report_called
      return unless Tapp.config.report_caller

      method_quoted = caller[0].split(':in').last.strip
      puts "#{method_quoted} in #{caller[1]}"
    end
  end
end
