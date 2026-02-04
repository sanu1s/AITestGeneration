Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully Track Another Valid Order (ORD67890)
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Delivered"
