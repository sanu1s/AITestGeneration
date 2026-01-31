Feature: Order Status Tracking - Positive Scenarios

  Scenario: Track a valid numeric order number
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks on "Track Order" button
    Then The order status should display "The order status Delayed"
