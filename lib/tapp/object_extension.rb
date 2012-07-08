require 'tapp/util'

module Tapp
  module ObjectExtension
    def tapp
      require 'pp'

      Tapp::ObjectExtension.module_eval do
        remove_method :tapp

        def tapp
          Tapp::Util.report_called
          tap { pp block_given? ? yield(self) : self }
        end
      end

      tapp
    end

    def taputs
      Tapp::Util.report_called
      tap { puts block_given? ? yield(self) : self }
    end

    def taap
      require 'ap'

      Tapp::ObjectExtension.module_eval do
        remove_method :taap

        def taap
          Tapp::Util.report_called
          tap { ap block_given? ? yield(self) : self }
        end
      end

      taap
    rescue LoadError
      warn "Sorry, you need to install awesome_print: `gem install awesome_print`"
    end
  end
end
