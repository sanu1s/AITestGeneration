Feature: Order Tracking Functionality

  Scenario: Successfully track a valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345" and clicks track
    Then The order status should display "The order status Delayed"
