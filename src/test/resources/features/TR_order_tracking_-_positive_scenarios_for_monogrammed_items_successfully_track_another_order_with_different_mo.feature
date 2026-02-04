Feature: Order Tracking - Positive Scenarios for Monogrammed Items

  Scenario: Successfully track another order with different monogram details
    Given User is on the order tracking page
    When User enters order number "CUSTOM456"
    And User clicks the "Track Order" button
    Then The status message should display "Order CUSTOM456 is being processed. Monogram: Jane, Oct 2024"
    And The URL should be "https://example.com/track/CUSTOM456"
