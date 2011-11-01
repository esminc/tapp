require 'thor'

module Tapp
  class Command < Thor
    desc 'grep [GIT_GREP_OPTIONS]', 'Print lines using tapp'
    def grep(*args)
      system 'git', 'grep', '-w', 'tapp', *args
    end
  end
end
