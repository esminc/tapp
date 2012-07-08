require 'tapp/printer'

module Tapp::Printer
  class Puts < Base
    def print_without_report_called(*args)
      puts *args
    end
  end
end
