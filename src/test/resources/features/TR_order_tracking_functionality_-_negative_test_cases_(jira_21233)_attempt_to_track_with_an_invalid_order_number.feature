Feature: Order Tracking Functionality - Negative Test Cases (JIRA 21233)

  Scenario: Attempt to track with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123" and clicks Track Order button
    Then The error message should display "Invalid Order Number. Please try again."
