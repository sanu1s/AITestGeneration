Feature: Order Shipping Address Verification - Positive Scenarios

  Scenario: Verify another correct shipping address for a valid order
    Given User is on the order tracking page
    When User enters order number "ORDER456"
    And User clicks the "Track Order" button
    Then The shipping address should display "456 Sample Road, Sample Town, ST 67890"
