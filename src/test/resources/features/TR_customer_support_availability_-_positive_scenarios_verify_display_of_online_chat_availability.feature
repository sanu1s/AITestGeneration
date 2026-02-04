Feature: Customer Support Availability - Positive Scenarios

  Scenario: Verify display of online chat availability
    Given User is on the "Home" page
    When User navigates to the "Support" page
    Then User should see the live chat status as "Online"
