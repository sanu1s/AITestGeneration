Feature: Order Tracking Functionality

  Scenario: Display error for invalid order number format
    Given User is on the order tracking page
    When User enters order number "123" and clicks track
    Then The error message should display "Invalid order number format."
