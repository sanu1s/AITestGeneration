Feature: Order Tracking - Negative Scenarios - Carrier Not Received

  Scenario: Verify status when carrier has not received the package for a specific order
    Given User is on the order tracking page
    When User enters order number "ORD45678"
    And User clicks the "Track Order" button
    Then The status message should display "UPS says they haven't received it yet and it has been 3 days"
