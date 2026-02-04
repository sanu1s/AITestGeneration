Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another order with a different valid order number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Here is the status of your order: ORD67890 - Delivered"
