require 'tapp/printer'

module Tapp::Printer
  class PrettyPrint < Base
    def print(*args)
      require 'pp'

      self.class.class_eval do
        remove_method :print

        def print(*args)
          pp(*args)
        end
      end

      print(*args)
    end
  end

  register :pretty_print, PrettyPrint
end
