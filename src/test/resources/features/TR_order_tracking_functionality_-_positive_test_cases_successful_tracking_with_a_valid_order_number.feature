Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successful Tracking with a Valid Order Number
    Given User is on the order tracking page
    When User enters order number "0022362771"
    And User clicks the "Track Order" button
    Then The order status should display "Order delivered successfully"
