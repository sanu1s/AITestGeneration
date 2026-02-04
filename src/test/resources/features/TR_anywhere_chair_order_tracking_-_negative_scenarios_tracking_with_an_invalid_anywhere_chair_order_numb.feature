Feature: Anywhere Chair Order Tracking - Negative Scenarios

  Scenario: Tracking with an Invalid Anywhere Chair Order Number
    Given User is on the Anywhere Chair order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID123 not found. Please check your order number."
