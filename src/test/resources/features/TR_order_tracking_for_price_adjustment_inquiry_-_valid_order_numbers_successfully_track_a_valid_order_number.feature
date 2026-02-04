Feature: Order Tracking for Price Adjustment Inquiry - Valid Order Numbers

  Scenario: Successfully track a valid order number
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the Track Order button
    Then The status message should display "Order ORD12345 is being processed."
    And The URL should be "https://example.com/track/ORD12345"
