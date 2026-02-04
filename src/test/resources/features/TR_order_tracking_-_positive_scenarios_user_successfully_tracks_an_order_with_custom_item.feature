Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks an order with custom items
    Given User is on the order tracking page
    When User enters order number "CUSTOM67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order CUSTOM67890 confirmed and details available for review."
