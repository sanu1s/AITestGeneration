Feature: Order Tracking - Positive Test Cases - Verify Manually Updated Address

  Scenario: Successfully verify an order with a manually updated address
    Given User is on the order tracking page
    When User enters order number "ORD_UPD_001"
    And User clicks the "Track Order" button
    Then The order status should display "Order found and address updated to: 123 Main St, Anytown, USA"
