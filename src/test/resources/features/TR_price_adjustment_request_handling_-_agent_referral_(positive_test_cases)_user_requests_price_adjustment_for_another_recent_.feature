Feature: Price Adjustment Request Handling - Agent Referral (Positive Test Cases)

  Scenario: User requests price adjustment for another recent order and is referred to an agent
    Given User navigates to the "Order Details" page
    And User views order "ORD67890"
    When User clicks the "Request Price Adjustment" button
    Then The system should display the agent referral message "I understand you are looking for a price adjustment for your order. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
