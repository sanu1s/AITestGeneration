Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Track an Empty Order Number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order Number cannot be empty."
