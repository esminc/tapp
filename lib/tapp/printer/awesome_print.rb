require 'tapp/printer'
require 'ap'

module Tapp::Printer
  class AwesomePrint < Base
    def print_without_report_called(*args)
      ap *args
    end
  end
end
