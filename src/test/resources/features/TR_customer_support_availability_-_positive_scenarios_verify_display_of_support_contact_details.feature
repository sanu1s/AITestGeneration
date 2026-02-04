Feature: Customer Support Availability - Positive Scenarios

  Scenario: Verify display of support contact details
    Given User is on the "Home" page
    When User navigates to the "Contact Us" page
    Then User should see the support email as "support@example.com"
    And User should see the support phone number as "1-800-123-4567"
