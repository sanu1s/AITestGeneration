Feature: Order Tracking - Positive Scenarios for Manual Updates

  Scenario: Successfully track an order with a known status after manual update
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORDER12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order status updated manually and is now Shipped"
