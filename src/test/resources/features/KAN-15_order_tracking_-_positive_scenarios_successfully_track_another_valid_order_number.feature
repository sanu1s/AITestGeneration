Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid order number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks on "Track Order" button
    Then The order status should display "The order status Delayed"
