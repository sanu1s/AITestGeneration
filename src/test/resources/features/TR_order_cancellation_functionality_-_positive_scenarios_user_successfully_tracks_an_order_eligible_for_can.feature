Feature: Order Cancellation Functionality - Positive Scenarios

  Scenario: User successfully tracks an order eligible for cancellation
    Given User is on the order tracking page
    When User enters a valid order number "ORD78901"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD78901 is eligible for cancellation."
    And The current URL should be "https://example.com/track/ORD78901"
