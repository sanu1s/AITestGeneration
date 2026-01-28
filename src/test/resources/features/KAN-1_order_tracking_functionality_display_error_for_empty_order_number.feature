Feature: Order Tracking Functionality

  Scenario: Display error for empty order number
    Given User is on the order tracking page
    When User enters order number "" and clicks track
    Then The error message should display "Order number cannot be empty."
