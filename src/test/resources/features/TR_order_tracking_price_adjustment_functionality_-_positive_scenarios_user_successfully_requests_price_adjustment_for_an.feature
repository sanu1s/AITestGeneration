Feature: Order Tracking Price Adjustment Functionality - Positive Scenarios

  Scenario: User successfully requests price adjustment for an eligible order
    Given User is on the order tracking page
    When User enters order number "PA12345"
    And User clicks the "Track Order" button
    Then The status message should display "Price adjustment request submitted for order PA12345. Refund will be processed shortly."
    And The current URL should be "https://example.com/order-status/PA12345"
