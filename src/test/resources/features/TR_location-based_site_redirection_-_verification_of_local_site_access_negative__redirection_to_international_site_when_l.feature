Feature: Location-Based Site Redirection - Verification of Local Site Access

  Scenario: Negative: Redirection to International Site when Location is Disabled
    Given browser location services are disabled
    When the user navigates to "https://www.example.com"
    Then the user should be on the "https://www.example.com/intl" URL
