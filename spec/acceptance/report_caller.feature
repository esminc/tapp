Feature: Report caller
  Scenario: call tapp when config.report_caller set to true
    Given a file named "hello.rb" with:
    """
    require 'tapp'

    Tapp.config.reset
    Tapp.config.report_caller = true

    class Hello
      def say
        'hello'.tapp
      end
    end

    Hello.new.say
    """

    When Ruby it
    Then I should see:
    """
    `tapp' in hello.rb:8:in `say'
    "hello"
    """
