require 'tapp/version'
require 'pp'

module Tapp
  class << self
    attr_accessor :verbose

    def report_called
      return unless verbose
      method_quoted = caller[0].split(':in').last.strip
      puts "#{method_quoted} in #{caller[1]}"
    end
  end
end

class Object
  def tapp
    Tapp.report_called
    tap { pp block_given? ? yield(self) : self }
  end

  def taputs
    Tapp.report_called
    tap { puts block_given? ? yield(self) : self }
  end

  def taap
    Tapp.report_called
    require 'ap'
    tap { ap block_given? ? yield(self) : self }
  rescue LoadError
    warn "Sorry, you need to install awesome_print: `gem install awesome_print`"
  end
end

