Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid order - In Transit
    Given User is on the order tracking page
    When User enters order number "ABC7890"
    And User clicks the "Track Order" button
    Then The order status message should display "Order ABC7890 is In Transit."
