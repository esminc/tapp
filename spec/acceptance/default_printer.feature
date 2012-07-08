Feature: config.default_printer
  Scenario: set config.default_printer to :awesome_print and call tapp
    Given I have the following code:
    """
    Tapp.config.default_printer = :awesome_print

    'hoge'.tapp
    """

    When Ruby it
    Then I should see:
    """
    "hoge"
    """
