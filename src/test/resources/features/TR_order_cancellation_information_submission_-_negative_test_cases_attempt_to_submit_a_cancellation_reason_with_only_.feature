Feature: Order Cancellation Information Submission - Negative Test Cases

  Scenario: Attempt to submit a cancellation reason with only spaces
    Given User is on the "Order Cancellation Request" page
    When User enters "   " as the cancellation reason
    And User clicks "Submit Request" button
    Then The error message should display "Cancellation reason cannot be empty."
