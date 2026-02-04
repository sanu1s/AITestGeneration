Feature: Site Loading Functionality - Positive Scenarios

  Scenario: Successfully load a valid website
    Given User is on the site loading page
    When User enters site URL "https://www.google.com"
    And User clicks the "Track Order" button
    Then User should be navigated to "https://www.google.com"
