Feature: Location-Based Site Redirection - Verification of Local Site Access

  Scenario: Successful Redirection to UK Site when Location is in UK
    Given browser location services are enabled
    And user's simulated location is "United Kingdom"
    When the user navigates to "https://www.example.com"
    Then the user should be on the "https://www.example.com/uk" URL
