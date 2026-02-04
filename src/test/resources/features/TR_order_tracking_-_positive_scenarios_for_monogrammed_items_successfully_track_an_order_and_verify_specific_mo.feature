Feature: Order Tracking - Positive Scenarios for Monogrammed Items

  Scenario: Successfully track an order and verify specific monogram details
    Given User is on the order tracking page
    When User enters order number "MONOGRAM123"
    And User clicks the "Track Order" button
    Then The status message should display "Order MONOGRAM123 is being processed. Monogram: Luca, Sept 2025"
    And The URL should be "https://example.com/track/MONOGRAM123"
