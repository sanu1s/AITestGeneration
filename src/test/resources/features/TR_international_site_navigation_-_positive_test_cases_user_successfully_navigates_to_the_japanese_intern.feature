Feature: International Site Navigation - Positive Test Cases

  Scenario: User successfully navigates to the Japanese international site
    Given User is on the "Main Website Homepage"
    When User clicks the "International Region Selector"
    And User selects "Japan" from the available regions
    Then The URL should be "https://www.example.com/jp"
    And The page content should confirm "Welcome to Japan Site"
