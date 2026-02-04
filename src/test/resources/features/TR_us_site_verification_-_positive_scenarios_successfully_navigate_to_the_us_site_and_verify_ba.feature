Feature: US Site Verification - Positive Scenarios

  Scenario: Successfully navigate to the US site and verify basic elements
    Given User opens the browser
    When User navigates to "https://www.example.com/us"
    Then The current URL should be "https://www.example.com/us"
    And The page title should contain "US Store"
