Feature: Site Loading Functionality - Negative Scenarios

  Scenario: Attempt to load an invalid URL format
    Given User is on the site loading page
    When User enters site URL "not-a-valid-url"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid URL format"
