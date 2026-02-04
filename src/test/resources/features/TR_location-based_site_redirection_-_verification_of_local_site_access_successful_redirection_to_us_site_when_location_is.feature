Feature: Location-Based Site Redirection - Verification of Local Site Access

  Scenario: Successful Redirection to US Site when Location is in US
    Given browser location services are enabled
    And user's simulated location is "USA"
    When the user navigates to "https://www.example.com"
    Then the user should be on the "https://www.example.com/us" URL
