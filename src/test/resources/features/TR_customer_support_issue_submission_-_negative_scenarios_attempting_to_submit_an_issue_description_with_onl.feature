Feature: Customer Support Issue Submission - Negative Scenarios

  Scenario: Attempting to submit an issue description with only whitespace
    Given User is on the "Contact Support" page
    When User enters issue description "   "
    And User clicks "Submit" button
    Then The error message should display "Please provide information about your issue."
