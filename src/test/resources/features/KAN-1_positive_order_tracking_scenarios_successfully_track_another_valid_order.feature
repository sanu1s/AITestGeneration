Feature: Positive Order Tracking Scenarios

  Scenario: Successfully track another valid order
    Given User is on the order tracking page
    When User enters order number "ABC67890"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
