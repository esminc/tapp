require 'tapp/printer'

module Tapp::Printer
  class Puts < Base
    def print(*args)
      puts *args
    end
  end
end
