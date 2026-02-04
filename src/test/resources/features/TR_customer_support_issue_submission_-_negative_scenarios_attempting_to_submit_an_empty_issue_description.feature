Feature: Customer Support Issue Submission - Negative Scenarios

  Scenario: Attempting to submit an empty issue description
    Given User is on the "Contact Support" page
    When User leaves issue description empty
    And User clicks "Submit" button
    Then The error message should display "Please provide information about your issue."
