Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another order with a valid order number
    Given user is on the order tracking page
    When user enters valid order number "ORD67890"
    And user clicks the "Track Order" button
    Then the order status should display "Order in transit, estimated delivery 2023-10-28"
    And the current URL should be "http://localhost:8080/track-result"
