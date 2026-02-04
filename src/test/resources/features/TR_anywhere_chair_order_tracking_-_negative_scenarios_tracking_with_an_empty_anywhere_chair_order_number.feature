Feature: Anywhere Chair Order Tracking - Negative Scenarios

  Scenario: Tracking with an Empty Anywhere Chair Order Number
    Given User is on the Anywhere Chair order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
