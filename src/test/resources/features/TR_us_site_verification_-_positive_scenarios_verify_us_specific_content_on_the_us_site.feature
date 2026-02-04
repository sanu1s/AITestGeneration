Feature: US Site Verification - Positive Scenarios

  Scenario: Verify US-specific content on the US site
    Given User has navigated to "https://www.example.com/us"
    Then User should see the welcome message "Welcome to our US Store"
    And User should see the currency symbol "USD"
