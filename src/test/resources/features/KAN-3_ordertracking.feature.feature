Feature: OrderTracking.feature

  Scenario: Successfully track a valid order with In Progress status
    Given User is on the order tracking page
    When User enters order number "ORDER45678"
    And User clicks the "Track Order" button
    Then The order status should display "In Good Hands and In Progress with the carrier"
