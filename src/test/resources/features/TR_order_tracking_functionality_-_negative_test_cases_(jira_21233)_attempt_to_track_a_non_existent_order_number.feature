Feature: Order Tracking Functionality - Negative Test Cases (JIRA 21233)

  Scenario: Attempt to track a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT999" and clicks Track Order button
    Then The error message should display "Order not found. Please verify the number."
