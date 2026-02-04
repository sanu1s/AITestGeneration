Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Tracking an invalid or non-existent order
    Given User is on the order tracking page
    When User enters order number "INVALID000"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID000 not found. Please check the order number and try again."
