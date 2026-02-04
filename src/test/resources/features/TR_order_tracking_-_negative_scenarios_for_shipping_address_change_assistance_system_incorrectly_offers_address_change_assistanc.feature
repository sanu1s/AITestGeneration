Feature: Order Tracking - Negative Scenarios for Shipping Address Change Assistance

  Scenario: System incorrectly offers address change assistance for a standard order
    Given User is on the order tracking page
    When User enters order number "REGULAR-ORD1"
    And User clicks the "Track Order" button
    Then The status message should not contain "I understand that you need to change the shipping address for your order."
