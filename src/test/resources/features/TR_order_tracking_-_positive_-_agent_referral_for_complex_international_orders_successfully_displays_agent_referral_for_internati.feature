Feature: Order Tracking - Positive - Agent Referral for Complex International Orders

  Scenario: Successfully displays agent referral for international backpack order
    Given User is on the Order Tracking page
    When User enters order number "COMPLEX-HK-BP-001"
    And User clicks on "Track Order" button
    Then The status message should display "I understand you're trying to order a backpack to Hong Kong. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
