Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid order number
    Given I am on the order tracking page
    When User enters order number "67890"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
