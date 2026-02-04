Feature: Order Cancellation Functionality (Positive & Negative Scenarios)

  Scenario: Attempt to cancel an already shipped order
    Given User is on the order tracking page
    When User enters order number "SHIPPEDORDER"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    Then An error message "Order SHIPPEDORDER cannot be cancelled as it has already been shipped." should be displayed
    And The order status for "SHIPPEDORDER" should not be "Cancelled"
