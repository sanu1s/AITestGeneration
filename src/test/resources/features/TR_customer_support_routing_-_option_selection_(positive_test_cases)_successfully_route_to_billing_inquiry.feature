Feature: Customer Support Routing - Option Selection (Positive Test Cases)

  Scenario: Successfully route to Billing Inquiry
    Given User is on the "Connect with Care Representative" page
    When User selects the "Billing Inquiry" option
    And User clicks the "Continue" button
    Then User should be routed to the "Billing Inquiry" department page
