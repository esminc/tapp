Feature: config.default_printer
  Scenario: set config.default_printer to :puts and call tapp
    Given I have the following code:
    """
    Tapp.config.default_printer = :puts

    'hoge'.tapp
    """

    When Ruby it
    Then I should see:
    """
    hoge
    """
