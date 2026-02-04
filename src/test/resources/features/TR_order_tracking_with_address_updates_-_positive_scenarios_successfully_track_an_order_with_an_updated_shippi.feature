Feature: Order Tracking with Address Updates - Positive Scenarios

  Scenario: Successfully track an order with an updated shipping address
    Given User is on the order tracking page
    When User enters order number "ORD12345-UPDATED"
    And User clicks the "Track Order" button
    Then The order status should display "Order status: Shipped to 123 Main St, Anytown, USA. Delivery scheduling available for updated address."
    And The URL should match pattern "**/track?order=ORD12345-UPDATED"
