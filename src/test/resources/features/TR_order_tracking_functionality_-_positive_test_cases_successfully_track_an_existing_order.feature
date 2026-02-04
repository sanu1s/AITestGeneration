Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully Track an Existing Order
    Given User is on the order tracking page
    When User enters order number "0063753110"
    And Clicks the "Track Order" button
    Then The tracking result should display "Order Found for 0063753110"
