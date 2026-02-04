Feature: International Site Navigation - Positive Test Cases

  Scenario: User successfully navigates to the German international site
    Given User is on the "Main Website Homepage"
    When User clicks the "International Region Selector"
    And User selects "Germany" from the available regions
    Then The URL should be "https://www.example.com/de"
    And The page content should confirm "Welcome to Germany Site"
