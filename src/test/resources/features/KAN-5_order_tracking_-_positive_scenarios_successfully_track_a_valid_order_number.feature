Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order number
    Given User is on the order tracking page
    When User enters order number "123"
    And User clicks on "Track Order" button
    Then The order status should display "The order status Delayed"
