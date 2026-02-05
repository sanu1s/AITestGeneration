Feature: Order Tracking Service - Positive Scenarios

  Scenario: Successfully track a valid order number
    Given User is on the Order Tracking page
    When User enters order number "ORD123"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
