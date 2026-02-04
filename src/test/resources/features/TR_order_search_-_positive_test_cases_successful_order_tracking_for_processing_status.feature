Feature: Order Search - Positive Test Cases

  Scenario: Successful Order Tracking for Processing Status
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks on the "Track Order" button
    Then The order status should display "Processing"
