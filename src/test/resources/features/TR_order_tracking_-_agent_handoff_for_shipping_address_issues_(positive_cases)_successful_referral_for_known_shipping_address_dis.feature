Feature: Order Tracking - Agent Handoff for Shipping Address Issues (Positive Cases)

  Scenario: Successful referral for known shipping address discrepancy
    Given User is on the order tracking page
    When User enters order number "SHIPPING_ISSUE_ORD_001"
    And User clicks the "Track Order" button
    Then The status message should display "I understand that you want to ensure the shipping address is correct. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
