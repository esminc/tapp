Feature: config.report_caller
  Scenario: set config.report_caller to true and call tapp
    Given a file named "hello.rb" with:
    """
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
    `tapp' in hello.rb:5:in `say'
    "hello"
    """
