Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track a valid order with 'In Good Hands' status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "In Good Hands and In Progress with the carrier"
