Feature: Order Tracking Price Adjustment Functionality - Negative Scenarios

  Scenario: User tracks an order not eligible for price adjustment
    Given User is on the order tracking page
    When User enters order number "NOADJUST123"
    And User clicks the "Track Order" button
    Then The error message should display "Order NOADJUST123 is not eligible for a price adjustment at this time. Please check our policy for details."
    And The current URL should be "https://example.com/order-status"
