Feature: Order Tracking with Billing Zip Code - Positive Scenarios

  Scenario: Successful Order Tracking with Order Number and Correct Billing Zip Code
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 is In Transit"
