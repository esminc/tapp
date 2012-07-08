require 'tapp/printer'
require 'ap'

module Tapp::Printer
  class AwesomePrint < Base
    def print(*args)
      ap *args
    end
  end
end
