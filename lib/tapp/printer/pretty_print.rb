require 'tapp/printer'
require 'pp'

module Tapp::Printer
  class PrettyPrint < Base
    def print(*args)
      pp *args
    end
  end
end
