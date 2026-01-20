Feature: Order Tracking - Positive Scenarios

  Scenario: Track a valid order number successfully
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Status: Delayed"
    And The delivery date should be displayed
