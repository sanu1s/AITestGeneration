Feature: Order Tracking - Positive Scenarios (Valid Order Numbers)

  Scenario: Successfully track a valid 9-digit order number
    Given User is on the order tracking page
    When User enters order number "987654321"
    And User clicks "Track Order" button
    Then The result message should display "The order status Delayed"
