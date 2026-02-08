Feature: Order Tracking Service - Positive Test Cases

  Scenario: Successfully track another valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the track order button
    Then The order status should display "The order status Delayed"
