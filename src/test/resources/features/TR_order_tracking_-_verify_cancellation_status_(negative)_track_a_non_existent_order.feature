Feature: Order Tracking - Verify Cancellation Status (Negative)

  Scenario: Track a non-existent order
    Given user is on the order tracking page
    When user enters order number "NONEXISTENT_ORDER_111"
    And user clicks on "Track Order" button
    Then an error message "Order 'NONEXISTENT_ORDER_111' not found." should be displayed
