Feature: Order Delivery Date Tracking - Positive Scenarios

  Scenario: Successfully track another order delivery date with a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD23456 will be delivered on 2024-09-01."
