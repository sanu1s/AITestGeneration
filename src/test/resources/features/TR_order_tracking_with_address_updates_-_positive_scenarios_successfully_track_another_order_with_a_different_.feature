Feature: Order Tracking with Address Updates - Positive Scenarios

  Scenario: Successfully track another order with a different updated shipping address
    Given User is on the order tracking page
    When User enters order number "ORD67890-UPDATED"
    And User clicks the "Track Order" button
    Then The order status should display "Order status: Ready for delivery to 456 Oak Ave, Otherville, USA. Delivery scheduling available."
    And The URL should match pattern "**/track?order=ORD67890-UPDATED"
