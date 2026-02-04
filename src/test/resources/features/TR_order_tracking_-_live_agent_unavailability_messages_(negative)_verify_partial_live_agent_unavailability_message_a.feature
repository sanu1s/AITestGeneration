Feature: Order Tracking - Live Agent Unavailability Messages (Negative)

  Scenario: Verify Partial Live Agent Unavailability Message After Another Order Track Attempt
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "AGENT_NEEDED_007"
    And User clicks the "Track Order" button
    Then The error message should contain "Our Live Agents are currently unavailable."
    And The error message should contain "Please try us again later."
    And The error message should contain "Is there anything else I can assist you with?"
