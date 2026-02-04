Feature: Order Cancellation Functionality - Negative Scenarios

  Scenario: User attempts to track a non-existent order for cancellation
    Given User is on the order tracking page
    When User enters a non-existent order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID123 not found. Please check the order number."
    And The current URL should be "https://example.com/track"
