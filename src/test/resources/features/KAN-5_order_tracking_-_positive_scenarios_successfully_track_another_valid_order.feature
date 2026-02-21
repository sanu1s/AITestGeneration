Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid order
    Given User is on the Order Tracking page
    When User enters order number "9876"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
