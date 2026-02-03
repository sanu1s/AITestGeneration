Feature: Order Tracking Price Adjustment Functionality - Negative Scenarios

  Scenario: User tracks an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALIDORDER"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number: INVALIDORDER. Please try again."
    And The current URL should be "https://example.com/order-status"
