require 'tapp/printer'
require 'tapp/util'

module Tapp
  module ObjectExtension
    def tapp(printer = Tapp.config.default_printer)
      Tapp::Util.report_called if Tapp.config.report_caller

      tap {
        Tapp::Printer.instance(printer).print block_given? ? yield(self) : self
      }
    end

    def taputs(&block)
      tapp :puts, &block
    end
  end
end
