Feature: Order Status Tracking - Positive Scenarios

  Scenario: Track another valid numeric order number
    Given User is on the order tracking page
    When User enters order number "98765"
    And User clicks on "Track Order" button
    Then The order status should display "The order status Delayed"
