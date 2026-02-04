Feature: US Site Verification - Negative Scenarios

  Scenario: Attempt to access a non-US site and expect US-specific content to be absent
    Given User opens the browser
    When User navigates to "https://www.example.com/gb"
    Then The current URL should be "https://www.example.com/gb"
    And User should not see the welcome message "Welcome to our US Store"
