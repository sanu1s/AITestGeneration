Feature: Negative - Validate Shipping Address Change Restrictions

  Scenario: User attempts to change address for an order that is already shipped
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORDER_SHIPPED_789"
    And User clicks the "Track Order" button
    And User sees order details for "ORDER_SHIPPED_789"
    And User clicks the "Change Shipping Address" button
    Then The error message should display "Cannot change address for shipped orders."
