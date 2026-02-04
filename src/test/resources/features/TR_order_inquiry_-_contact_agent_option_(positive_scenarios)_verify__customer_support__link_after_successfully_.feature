Feature: Order Inquiry - Contact Agent Option (Positive Scenarios)

  Scenario: Verify 'Customer Support' link after successfully tracking another order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And Clicks the "Track Order" button
    Then The order status should display "Order is being processed"
    And The "Customer Support" link should be visible
