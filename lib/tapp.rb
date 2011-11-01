require 'tapp/version'

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
    require 'pp'

    Object.module_eval do
      remove_method :tapp

      def tapp
        Tapp.report_called
        tap { pp block_given? ? yield(self) : self }
      end
    end

    tapp
  end

  def taputs
    Tapp.report_called
    tap { puts block_given? ? yield(self) : self }
  end

  def taap
    require 'ap'

    Object.module_eval do
      remove_method :taap

      def taap
        Tapp.report_called
        tap { ap block_given? ? yield(self) : self }
      end
    end

    taap
  rescue LoadError
    warn "Sorry, you need to install awesome_print: `gem install awesome_print`"
  end
end

