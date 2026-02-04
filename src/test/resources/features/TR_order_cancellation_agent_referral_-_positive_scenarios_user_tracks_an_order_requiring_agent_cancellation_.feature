Feature: Order Cancellation Agent Referral - Positive Scenarios

  Scenario: User tracks an order requiring agent cancellation - Part 2 message verification
    Given User is on the order tracking page
    When User enters order number "CANCEL_ORD_002"
    And User clicks the "Track Order" button
    Then The status message should display "May I check if an agent is available to help you?"
