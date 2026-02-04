Feature: Order Tracking - Partial Delivery & Agent Referral (Positive Test Cases)

  Scenario: Successfully Tracks Another Partial Order and Suggests Agent Assistance
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "PARTIAL456"
    And User clicks the "Track Order" button
    Then The status message should display "Your order 'PARTIAL456' has a partial delivery issue. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
