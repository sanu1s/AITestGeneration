Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: User receives an error for an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID999"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID999 not found"
