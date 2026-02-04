Feature: Order Tracking Functionality - Negative Test Cases (JIRA 21233)

  Scenario: Attempt to track with an empty order number
    Given User is on the order tracking page
    When User enters order number "" and clicks Track Order button
    Then The error message should display "Order number cannot be empty."
