Feature: Order Return Processing - Negative Scenarios

  Scenario: Attempt to process return with an invalid order number
    Given User is on the order return page
    When User enters order number "INVALID-ORDER"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found or not eligible for return."
