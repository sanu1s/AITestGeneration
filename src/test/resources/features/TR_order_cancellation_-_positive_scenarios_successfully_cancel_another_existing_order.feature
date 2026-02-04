Feature: Order Cancellation - Positive Scenarios

  Scenario: Successfully cancel another existing order
    Given User is on the order cancellation page
    When User enters order number "ORD789012"
    And User clicks the "Cancel Order" button
    Then The cancellation status should display "Order ORD789012 has been successfully cancelled."
