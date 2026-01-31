Feature: Order Status Tracking - Negative Scenarios - Empty or Short Input

  Scenario: Attempt to track with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks on "Track Order" button
    Then The error message should display "Order number must be numeric"
