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

    def taputs
      tapp :puts
    end

    def taap
      warn 'DEPRECATION WARNING: `taap` is deprecated. Set `Tapp.config.default_printer = :awesome_print` and use `tapp` instead.'

      tapp :awesome_print
    end
  end
end
