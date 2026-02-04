Feature: Order Shipping Address Verification - Positive Scenarios

  Scenario: Verify correct shipping address for a valid order
    Given User is on the order tracking page
    When User enters order number "ORDER123"
    And User clicks the "Track Order" button
    Then The shipping address should display "123 Test Street, Test City, TS 12345"
