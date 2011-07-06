require 'tapp/version'
require 'pp'

class Object
  def tapp
    tap { pp block_given? ? yield(self) : self }
  end

  def taputs
    tap { puts block_given? ? yield(self) : self }
  end

  def taap
    require 'ap'
    tap { ap block_given? ? yield(self) : self }
  rescue LoadError
    warn "Sorry, you need to install awesome_print: `gem install awesome_print`"
  end
end
