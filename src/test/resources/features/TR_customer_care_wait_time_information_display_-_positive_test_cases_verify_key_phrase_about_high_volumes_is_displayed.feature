Feature: Customer Care Wait Time Information Display - Positive Test Cases

  Scenario: Verify key phrase about high volumes is displayed
    Given User is on the customer support page
    Then The wait time message should contain "higher than normal volumes"
