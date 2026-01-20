Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an order number below min length
    Given User is on the order tracking page
    When User enters order number "OR"
    And User clicks the "Track Order" button
    Then The error message should display "Order number too short"
