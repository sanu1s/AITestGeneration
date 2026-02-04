Feature: Order Cancellation - Positive Scenarios

  Scenario: Successfully cancel an existing order
    Given User is on the order cancellation page
    When User enters order number "0061845946"
    And User clicks the "Cancel Order" button
    Then The cancellation status should display "Order 0061845946 has been successfully cancelled."
