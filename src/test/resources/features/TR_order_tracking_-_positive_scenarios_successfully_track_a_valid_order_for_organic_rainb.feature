Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order for Organic Rainbow Cloud Sheet Set
    Given User is on the order tracking page
    When User enters order number "ORD_RAINBOW_SHEET_001"
    And User clicks the "Track Order" button
    Then The status message should display "Order Found. Product: Organic rainbow cloud sheet set."
    And The current URL should be "https://example.com/track/ORD_RAINBOW_SHEET_001"
