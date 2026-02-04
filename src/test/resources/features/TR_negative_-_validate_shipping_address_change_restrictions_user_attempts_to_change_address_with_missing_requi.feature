Feature: Negative - Validate Shipping Address Change Restrictions

  Scenario: User attempts to change address with missing required fields
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORDER_ACTIVE_999"
    And User clicks the "Track Order" button
    And User sees order details for "ORDER_ACTIVE_999"
    And User clicks the "Change Shipping Address" button
    And User enters new address "789 Empty Road", "", "11223"
    And User clicks the "Save Changes" button
    Then The error message should display "City field cannot be empty."
