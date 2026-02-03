Feature: Order Tracking Functionality - Positive Scenarios for Price Adjustment

  Scenario: Successfully track an order eligible for price adjustment
    Given User is on the order tracking page "https://www.example.com/order-tracking"
    When User enters order number "PA12345"
    And User clicks the "Track Order" button
    Then The status message should display "Your order PA12345 is eligible for price adjustment."
