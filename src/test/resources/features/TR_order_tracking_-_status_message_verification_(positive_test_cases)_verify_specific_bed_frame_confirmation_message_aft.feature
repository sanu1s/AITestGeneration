Feature: Order Tracking - Status Message Verification (Positive Test Cases)

  Scenario: Verify specific bed frame confirmation message after tracking
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "So I will be receiving one Austin bed frame correct?"
