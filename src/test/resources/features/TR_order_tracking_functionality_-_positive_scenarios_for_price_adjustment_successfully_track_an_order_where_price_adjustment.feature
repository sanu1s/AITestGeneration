Feature: Order Tracking Functionality - Positive Scenarios for Price Adjustment

  Scenario: Successfully track an order where price adjustment has been applied
    Given User is on the order tracking page "https://www.example.com/order-tracking"
    When User enters order number "PA67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your order PA67890 price adjustment has been applied."
