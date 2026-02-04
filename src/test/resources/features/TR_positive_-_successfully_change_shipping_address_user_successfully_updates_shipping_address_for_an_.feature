Feature: Positive - Successfully Change Shipping Address

  Scenario: User successfully updates shipping address for an active order
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORDER_ACTIVE_123"
    And User clicks the "Track Order" button
    And User sees order details for "ORDER_ACTIVE_123"
    And User clicks the "Change Shipping Address" button
    And User enters new address "123 New Street", "New City", "98765"
    And User clicks the "Save Changes" button
    Then The success message should display "Shipping address updated successfully for ORDER_ACTIVE_123"
