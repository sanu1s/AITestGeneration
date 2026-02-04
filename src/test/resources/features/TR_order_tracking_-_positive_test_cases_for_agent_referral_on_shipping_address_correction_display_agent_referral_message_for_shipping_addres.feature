Feature: Order Tracking - Positive Test Cases for Agent Referral on Shipping Address Correction

  Scenario: Display agent referral message for shipping address correction for another order
    Given User is on the order tracking page
    When User enters order number "ADDR_CORRECT_REQ_AGENT_002"
    And User clicks the "Track Order" button
    Then The status message should display "I understand that you want to ensure the shipping address is correct. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
