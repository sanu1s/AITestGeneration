Feature: Customer Support Routing - Option Selection (Positive Test Cases)

  Scenario: Successfully route to Technical Support
    Given User is on the "Connect with Care Representative" page
    When User selects the "Technical Support" option
    And User clicks the "Continue" button
    Then User should be routed to the "Technical Support" department page
