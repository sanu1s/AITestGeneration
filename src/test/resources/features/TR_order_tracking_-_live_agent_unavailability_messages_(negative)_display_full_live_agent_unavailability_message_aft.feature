Feature: Order Tracking - Live Agent Unavailability Messages (Negative)

  Scenario: Display Full Live Agent Unavailability Message After Order Track Attempt
    Given User navigates to the order tracking page "https://example.com/trackorder"
    When User enters order number "INVALID_ORD_AGENT"
    And User clicks the "Track Order" button
    Then The error message should display "Our Live Agents are currently unavailable. Please try us again later. Is there anything else I can assist you with?"
