require 'tapp/printer'
require 'pp'

module Tapp::Printer
  class PrettyPrint < Base
    def print_without_report_called(*args)
      pp *args
    end
  end
end
