Feature: Site Loading Functionality - Negative Scenarios

  Scenario: Attempt to load an empty URL
    Given User is on the site loading page
    When User enters site URL ""
    And User clicks the "Track Order" button
    Then The error message should display "URL cannot be empty"
