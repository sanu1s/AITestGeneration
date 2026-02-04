Feature: Customer Support Availability - Negative Scenarios

  Scenario: Verify display of offline chat message
    Given User is on the "Home" page
    When User navigates to the "Support" page
    Then User should see the live chat status as "Offline"
