require 'thor'

module Tapp
  class Command < Thor
    desc 'grep [<git-grep-options>]', 'Print lines using tapp'
    def grep(*)
      system 'git', 'grep', '--word-regexp', '-e', 'tapp', *ARGV.drop(1)
    end
  end
end
