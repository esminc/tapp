Feature: Object#taputs
  Scenario: Call taputs within methods chain
    Given I have the following code:
    """
    (1..5).taputs.select(&:odd?).taputs.inject(&:+)
    """

    When Ruby it

    Then I should see:
    """
    1..5
    1
    3
    5
    """

  Scenario: Call taputs with block
    Given I have the following code:
    """
    (1..5).taputs(&:count).select(&:odd?).taputs
    """

    When Ruby it

    Then I should see:
    """
    5
    1
    3
    5
    """
