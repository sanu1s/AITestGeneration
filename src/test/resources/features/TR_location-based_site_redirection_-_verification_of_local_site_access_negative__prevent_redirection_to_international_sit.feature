Feature: Location-Based Site Redirection - Verification of Local Site Access

  Scenario: Negative: Prevent Redirection to International Site with Enabled US Location
    Given browser location services are enabled
    And user's simulated location is "USA"
    When the user navigates to "https://www.example.com"
    Then the user should NOT be on the "https://www.example.com/intl" URL
    And the user should be on the "https://www.example.com/us" URL
