Feature: Order Tracking - Negative Scenarios - Business Hours Validation

  Scenario: User attempts to cancel order outside business hours with another valid order number
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The status message should display "I understand that you want to cancel your order. Unfortunately, we are currently outside of our business hours, so I can't connect you to a care representative right now."
