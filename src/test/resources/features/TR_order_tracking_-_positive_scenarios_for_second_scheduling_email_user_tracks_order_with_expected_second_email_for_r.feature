Feature: Order Tracking - Positive Scenarios for Second Scheduling Email

  Scenario: User tracks order with expected second email for revised schedule
    Given User navigates to the order tracking page
    When User enters order number "ORD002_REVISED"
    And User clicks the "Track Order" button
    Then The status message should display "Second scheduling email sent due to revised delivery schedule. This is expected."
    And The current URL should be "https://example.com/track/ORD002_REVISED"
