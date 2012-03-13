require 'thor'

module Tapp
  class Command < Thor
    desc 'grep [<git-grep-options>]', 'Print lines using tapp'
    def grep(*)
      opts = ['--word-regexp', '-e', 'tapp', '-e', 'taputs', '-e', 'taap', *ARGV.drop(1)]
      git_grep = ['git', 'grep', opts].flatten.join(' ')
      puts `#{git_grep}`.gsub(/^Gemfile(\.lock)?:.+?\n/, '')
    end
  end
end
