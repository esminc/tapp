Feature: Custom printer
  Scenario: define a custom printer and use it
    Given I have the following code:
    """
    require 'tapp/printer'

    module Tapp::Printer
      class MyPrinter < Base
        def print(*args)
          puts "*** #{args.join(' ')} ***"
        end
      end

      register :my_printer, MyPrinter
    end

    %w(foo bar).tapp(:my_printer)
    """

    When Ruby it
    Then I should see:
    """
    *** foo bar ***
    """
