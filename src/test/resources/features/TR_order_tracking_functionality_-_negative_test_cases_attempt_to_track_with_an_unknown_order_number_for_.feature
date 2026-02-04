Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track with an unknown order number for a blanket
    Given User is on the order tracking page
    When User enters order number "UNKNOWN456"
    And User clicks the "Track Order" button
    Then The error message should display "Order UNKNOWN456 not found. Please check your order number and try again."
