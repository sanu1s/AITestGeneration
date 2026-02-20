Feature: Order Tracking - Validate Positive Scenarios for Order Status

  Scenario: Successfully track a valid order number
    Given User is on the Order Tracking page
    When User enters order number "123"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
