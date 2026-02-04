Feature: Order Tracking - Positive Scenarios for 20% Off Promotion Validity

  Scenario: Another user tracks a specific order number that qualifies for an additional 20% off
    Given User is on the order tracking page at 'https://example.com/track'
    When User enters order number 'SPECIALORDER789'
    And User clicks the 'Track Order' button
    Then The status message should display 'Order SPECIALORDER789 found. Enjoy 20% off as a valued customer!'
    And The URL should be 'https://example.com/track/SPECIALORDER789'
