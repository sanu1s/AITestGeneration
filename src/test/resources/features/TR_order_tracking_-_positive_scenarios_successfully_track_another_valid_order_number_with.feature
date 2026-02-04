Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid order number with 'In Transit' status
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "In Transit"
