Feature: Order Tracking - Positive Cases

  Scenario: Successfully track a valid order number 'ORD12345'
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The estimated delivery date should be "2023-12-31"
