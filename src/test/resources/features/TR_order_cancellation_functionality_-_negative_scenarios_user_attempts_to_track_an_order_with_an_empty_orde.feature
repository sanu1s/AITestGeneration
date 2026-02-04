Feature: Order Cancellation Functionality - Negative Scenarios

  Scenario: User attempts to track an order with an empty order number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number is required."
    And The current URL should be "https://example.com/track"
