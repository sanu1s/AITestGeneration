Feature: Agent Connection Guidance on Order Tracking Page (Negative Test Cases)

  Scenario: User attempts to track an order with empty input and receives agent connection guidance
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The system should display the agent connection guidance message: "I understand you would to connect with an agent. Could you please provide more information about the issue you are experiencing so I can route you to the correct department?"
