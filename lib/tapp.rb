require 'pp'

class Object
  def tapp
    tap { pp block_given? ? yield(self) : self }
  end

  def taputs
    tap { puts block_given? ? yield(self) : self }
  end
end
