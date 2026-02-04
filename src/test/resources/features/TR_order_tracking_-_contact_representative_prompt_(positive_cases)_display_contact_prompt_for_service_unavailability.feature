Feature: Order Tracking - Contact Representative Prompt (Positive Cases)

  Scenario: Display contact prompt for service unavailability
    Given User is on the order tracking page
    When User enters order number "ORD-SERVICE-002"
    And User clicks the Track Order button
    Then The error message should display "Tracking service is currently unavailable. Please speak to a representative."
