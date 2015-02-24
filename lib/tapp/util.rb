module Tapp
  module Util
    module_function

    def report_called
      inner, outer = caller.partition {|line|
        line =~ %r(/lib/tapp/(?!turnip))
      }

      method_quoted = inner.last.split(':in').last.strip

      puts "#{method_quoted} in #{outer.first}"
    end
  end
end
