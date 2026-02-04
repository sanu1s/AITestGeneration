Feature: Order Tracking - Positive Scenarios for Manual Updates

  Scenario: Successfully track another order with a different status after manual update
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "MANUAL67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order status manually changed to Delivered"
