Feature: Order Tracking - Positive Scenarios for Pending Orders

  Scenario: Successfully track an order with a pending status
    Given user is on the order tracking page
    When user enters order number "PENDING123"
    And user clicks the "Track Order" button
    Then the order status should display "Order total is pending"
