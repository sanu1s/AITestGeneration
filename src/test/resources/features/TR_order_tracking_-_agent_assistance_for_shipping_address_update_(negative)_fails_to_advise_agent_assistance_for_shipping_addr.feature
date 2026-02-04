Feature: Order Tracking - Agent Assistance for Shipping Address Update (Negative)

  Scenario: Fails to advise agent assistance for shipping address update
    Given User is on the order tracking page
    When User enters order number "ORD78902"
    And User clicks the "Track Order" button
    Then The status message should NOT display "I understand you're looking to update the shipping address for an order. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
    And The error message should display "Order 'ORD78902' cannot be updated at this time. Please try again later."
