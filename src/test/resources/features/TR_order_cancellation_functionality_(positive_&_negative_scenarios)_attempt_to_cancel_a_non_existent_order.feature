Feature: Order Cancellation Functionality (Positive & Negative Scenarios)

  Scenario: Attempt to cancel a non-existent order
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT1"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    Then An error message "Order NONEXISTENT1 not found." should be displayed
