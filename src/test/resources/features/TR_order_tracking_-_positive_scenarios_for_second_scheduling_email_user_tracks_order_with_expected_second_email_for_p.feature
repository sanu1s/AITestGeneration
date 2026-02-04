Feature: Order Tracking - Positive Scenarios for Second Scheduling Email

  Scenario: User tracks order with expected second email for partial shipment
    Given User navigates to the order tracking page
    When User enters order number "ORD001_PARTIAL"
    And User clicks the "Track Order" button
    Then The status message should display "Second scheduling email sent for partial shipment of remaining items. This is expected."
    And The current URL should be "https://example.com/track/ORD001_PARTIAL"
