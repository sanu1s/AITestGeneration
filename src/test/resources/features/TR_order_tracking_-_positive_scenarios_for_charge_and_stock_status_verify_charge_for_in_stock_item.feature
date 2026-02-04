Feature: Order Tracking - Positive Scenarios for Charge and Stock Status

  Scenario: Verify Charge for In-Stock Item
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "You have been charged $31.57Glow-in-the-Dark T-Rex Blueprint 12oz MMC Water Bottle so far as it is in stock."
