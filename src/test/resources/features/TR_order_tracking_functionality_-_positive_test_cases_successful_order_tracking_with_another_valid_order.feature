Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successful Order Tracking with Another Valid Order Number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks on "Track Order" button
    Then The tracking status should display "Order ORD67890 is Delivered"
