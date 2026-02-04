Feature: Order Tracking - Agent Assistance for Shipping Address Update (Positive)

  Scenario: Successfully advises agent assistance for shipping address update
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The status message should display "I understand you're looking to update the shipping address for an order. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
